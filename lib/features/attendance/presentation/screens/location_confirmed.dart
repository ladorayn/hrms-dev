import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/core/config/manual_capture.dart';
import 'package:hrms_mobile/core/enums/attendance_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';

class LocationConfirmedScreen extends ConsumerWidget {
  final AttendanceEnum activity;

  const LocationConfirmedScreen({
    super.key,
    required this.activity,
  });

  void _updateFacesProfile(BuildContext context, WidgetRef ref) async {
    final generalUsecase = ref.read(generalUsecaseProvider);
    final authNotifier = ref.read(authProvider.notifier);
    final currentProfile = authNotifier.state.value;

    if (currentProfile != null) {
      try {
        final facesProfile = await generalUsecase.getFacesProfile();
        if ((facesProfile.faces?.length ?? 0) >
            (currentProfile.faces?.length ?? 0)) {
          await authNotifier.onLoginSuccess(currentProfile, facesProfile);
        }
      } catch (e) {
        debugPrint("Failed to fetch updated faces profile: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final authP = ref.watch(authProvider);
    final faceCount = authP.value?.faces?.length ?? 0;

    if (authP.hasValue && faceCount < 3) {
      Future.microtask(() => _updateFacesProfile(context, ref));
    }
    final faces = authP.value?.faces ?? [];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: IAppBar(title: activity.title(l10n)),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          IAssets.checkBlue,
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          l10n.attendanceLocationConfirmed,
                          style: textTheme.titleLarge,
                        )
                      ],
                    ),
                    const SizedBox(height: 32),
                    SvgPicture.asset(
                      IAssets.biometric,
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: 32),
                    Text(
                      l10n.attendanceLocationConfirmedBody(
                          activity.sentence(l10n)),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          IFooterButton(
            onPressed: () {
              if (isManualCaptureBypassActive) {
                if (faces.length >= 3) {
                  globalNavigatorKey.currentContext?.pushNamed(
                    RoutePaths.faceVerification,
                    extra: activity,
                  );
                } else {
                  globalNavigatorKey.currentContext?.pushNamed(
                    RoutePaths.faceRegistration,
                    extra: {
                      'activity': activity,
                      'initialFaceCount': faceCount,
                    },
                  );
                }
                return;
              }
              if (faces.length >= 3) {
                globalNavigatorKey.currentContext
                    ?.pushNamed(RoutePaths.faceVerification, extra: activity);
              } else {
                globalNavigatorKey.currentContext?.pushNamed(
                  RoutePaths.faceRegistration,
                  extra: {
                    'activity': activity,
                    'initialFaceCount': faceCount,
                  },
                );
              }
            },
            text: isManualCaptureBypassActive
                ? l10n.continueButton
                : faces.length >= 3
                    ? l10n.attendanceStartVerification
                    : l10n.attendanceRegisterYourFace,
          ),
        ],
      ),
    );
  }
}
