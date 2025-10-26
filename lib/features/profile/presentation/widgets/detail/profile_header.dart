import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/user_info.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(8.r),
            bottomLeft: Radius.circular(8.r),
          )),
      width: double.infinity,
      child: Column(
        children: [
          UserInfo(),
          SizedBox(
            height: 16.h,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              foregroundColor: IColors.light.primary.main,
              side: BorderSide(
                color: IColors.light.primary.main,
                width: 1,
              ),
            ),
            onPressed: () {
              globalNavigatorKey.currentContext
                  ?.pushNamed(RoutePaths.profileEditName);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(IAssets.edit),
                SizedBox(width: 4.w),
                Text("Edit Profile"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
