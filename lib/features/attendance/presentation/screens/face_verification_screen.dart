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
  const FaceVerificationScreen({super.key, required this.activity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen for the success state to auto-navigate
    ref.listen(faceVerificationProvider, (previous, next) {
      if (next.step == VerificationStep.success) {
        Future.delayed(const Duration(milliseconds: 1200), () {
          if (globalNavigatorKey.currentContext != null &&
              globalNavigatorKey.currentContext!.mounted) {
            globalNavigatorKey.currentContext
                ?.pushNamed(RoutePaths.attendanceForm, extra: activity);
          }
        });
      }
    });

    final state = ref.watch(faceVerificationProvider);
    final notifier = ref.read(faceVerificationProvider.notifier);
    final textTheme = Theme.of(context).textTheme;
    final isFailed = state.step == VerificationStep.failed;
    final isSuccess = state.step == VerificationStep.success;

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
                      CircleAvatar(
                        radius: 140,
                        backgroundImage: state.photoPath != null
                            ? FileImage(File(state.photoPath!))
                            : null,
                        child: state.photoPath == null
                            ? Icon(Icons.person, size: 80)
                            : null,
                      ),
                      if (state.step == VerificationStep.loading)
                        const CircularProgressIndicator(),

                      // Show checkmark on success
                      if (state.step == VerificationStep.success)
                        Container(
                          width: 280,
                          height: 280,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                            size: 80,
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                      height: state.step == VerificationStep.success ||
                              state.step == VerificationStep.loading
                          ? 100
                          : 40),
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
          // Only show the button when it's needed (initial or failed state)
          if (state.step == VerificationStep.success ||
              state.step == VerificationStep.loading)
            SizedBox(
              height: 60,
            ),
          if (state.step == VerificationStep.initial ||
              state.step == VerificationStep.failed)
            IFooterButton(
              text: state.step.buttonText,
              onPressed: () async {
                if (state.step == VerificationStep.failed) {
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
        ],
      ),
    );
  }
}
