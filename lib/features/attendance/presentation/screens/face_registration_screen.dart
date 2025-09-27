import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/constants/attendance_enum.dart';
import 'package:hrms_mobile/core/constants/face_step_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:image_picker/image_picker.dart';

import '../providers/face_registration_provider.dart';

class FaceRegistrationScreen extends ConsumerWidget {
  final AttendanceEnum activity;
  const FaceRegistrationScreen({super.key, required this.activity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(faceRegistrationProvider, (previous, next) {
      if (next.step == FaceStep.success) {
        Future.delayed(const Duration(milliseconds: 1200), () {
          if (globalNavigatorKey.currentContext != null &&
              globalNavigatorKey.currentContext!.mounted) {
            globalNavigatorKey.currentContext
                ?.pushNamed(RoutePaths.attendanceForm, extra: activity);
          }
        });
      }
    });
    final state = ref.watch(faceRegistrationProvider);
    final isSuccess = state.step == FaceStep.success;
    final isFailed = state.step == FaceStep.failed;

    print("isSuccess $isSuccess - ${state.step}");
    return Scaffold(
      appBar: IAppBar(
        title: "Face Registration",
        onBack: () => globalNavigatorKey.currentContext?.pop(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: CircularProgressIndicator(
                          value: (isSuccess || isFailed) ? 1.0 : state.progress,
                          strokeWidth: 6,
                          backgroundColor: Colors.grey.shade300,
                          valueColor: AlwaysStoppedAnimation(
                            isFailed
                                ? IColors.light.error.main
                                : IColors.light.primary.main,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 140,
                        backgroundImage: state.photos[2] != null
                            ? FileImage(File(state.photos[2]!))
                            : (state.photos[1] != null
                                ? FileImage(File(state.photos[1]!))
                                : (state.photos[0] != null
                                    ? FileImage(File(state.photos[0]!))
                                    : null)),
                        child: state.photos[0] == null
                            ? const Icon(Icons.person, size: 80)
                            : null,
                      ),
                      if (isSuccess)
                        CircleAvatar(
                          backgroundColor: IColors.light.primary.main,
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      if (isFailed)
                        Icon(
                          Icons.cancel,
                          color: IColors.light.error.hover,
                          size: 50,
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        if (!isSuccess &&
                            state.step.instructionAsset.isNotEmpty)
                          SvgPicture.asset(
                            state.step.instructionAsset,
                            width: 40,
                            height: 40,
                          ),
                        Text(
                          state.step.instruction,
                          // Make success text more prominent
                          style: (isSuccess || isFailed)
                              ? Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: isSuccess
                                        ? IColors.light.primary.main
                                        : IColors.light.error.main,
                                  )
                              : Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!isSuccess)
            IFooterButton(
              text: state.step.buttonText,
              onPressed: () async {
                switch (state.step) {
                  case FaceStep.success:
                    globalNavigatorKey.currentContext?.pop();
                    break;
                  case FaceStep.failed:
                    ref.read(faceRegistrationProvider.notifier).retry();
                    break;
                  default:
                    final picker = ImagePicker();
                    final picked = await picker.pickImage(
                      source: ImageSource.camera,
                      preferredCameraDevice: CameraDevice.front,
                    );
                    if (picked != null) {
                      ref
                          .read(faceRegistrationProvider.notifier)
                          .savePhoto(picked.path);
                    }
                }
              },
            ),
        ],
      ),
    );
  }
}
