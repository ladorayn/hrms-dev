import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/core/constants/attendance_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';

class LocationConfirmedScreen extends ConsumerWidget {
  final AttendanceEnum activity;
  const LocationConfirmedScreen({
    super.key,
    required this.activity,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: IAppBar(title: activity.title),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Location Confirmed",
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
                      "Please complete face verification to proceed with ${activity.sentence}. This step helps ensure secure and accurate attendance tracking.",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          IFooterButton(
            onPressed: () {
              globalNavigatorKey.currentContext
                  ?.pushNamed(RoutePaths.faceVerification, extra: activity);
            },
            text: "Start Verification",
          ),
        ],
      ),
    );
  }
}
