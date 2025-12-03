import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';
import 'package:hrms_mobile/core/enums/face_step_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:image_picker/image_picker.dart';

import '../providers/face_verification_provider.dart';

class FaceVerificationScreen extends ConsumerWidget {
  final AttendanceEnum activity;

  const FaceVerificationScreen({
    super.key,
    required this.activity,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(faceVerificationProvider, (prev, next) {
      if (next.step == VerificationStep.success) {
        Future.delayed(const Duration(milliseconds: 1200), () {
          if (globalNavigatorKey.currentContext?.mounted ?? false) {
            globalNavigatorKey.currentContext?.pushNamed(
              RoutePaths.attendanceForm,
              extra: activity,
            );
          }
        });
      }
    });

    final state = ref.watch(faceVerificationProvider);
    final notifier = ref.read(faceVerificationProvider.notifier);

    final isFailed = state.step == VerificationStep.failed;
    final isSuccess = state.step == VerificationStep.success;
    final isLoading = state.step == VerificationStep.loading;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: IAppBar(title: "Face Verification"),
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
                          value: 1.0,
                          strokeWidth: 6,
                          backgroundColor: Colors.grey.shade300,
                          valueColor: AlwaysStoppedAnimation(
                            isFailed
                                ? IColors.light.error.main
                                : isSuccess
                                    ? IColors.light.primary.main
                                    : Colors.grey.shade300,
                          ),
                        ),
                      ),

                      // Photo
                      CircleAvatar(
                        radius: 140,
                        backgroundImage: state.photoPath != null
                            ? FileImage(File(state.photoPath!))
                            : null,
                        child: state.photoPath == null
                            ? const Icon(Icons.person, size: 80)
                            : null,
                      ),

                      if (isLoading)
                        const CircularProgressIndicator(strokeWidth: 5),

                      if (isSuccess)
                        Container(
                          width: 280,
                          height: 280,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: 80,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      state.step.instruction,
                      textAlign: TextAlign.center,
                      style: (isSuccess || isFailed)
                          ? Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: isSuccess
                                    ? IColors.light.primary.main
                                    : IColors.light.error.main,
                              )
                          : Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!isSuccess && !isLoading)
            IFooterButton(
              text: state.step.buttonText,
              onPressed: () async {
                if (isFailed) {
                  notifier.retry();
                  return;
                }

                final picker = ImagePicker();
                final picked = await picker.pickImage(
                  source: ImageSource.camera,
                  preferredCameraDevice: CameraDevice.front,
                );

                if (picked != null) {
                  notifier.takePhoto(picked.path);
                }
              },
            ),
          if (isSuccess || isLoading) const SizedBox(height: 60),
        ],
      ),
    );
  }
}
