import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/core/util/i_strings_utils.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/profile_detail_item.dart';

class PersonalInfoSection extends StatelessWidget {
  final UserProfile profile;

  const PersonalInfoSection({super.key, required this.profile});

  /// Helper to get the correct icon path from the social media type
  String _getSocialIconPath(String? type) {
    switch (type) {
      case 'instagram':
        return IAssets.instagram;
      case 'twitter':
        return IAssets.twitter;
      case 'linkedin':
        return IAssets.linkedin;
      case 'facebook':
        return IAssets.facebook;
      default:
        return IAssets.imagePlaceholder;
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final valueColor = Colors.black;

    String? formattedDate = '-';
    if (profile.user?.employeeProfile?.dateOfBirth != null) {
      try {
        formattedDate = DateTimeHelper.formatDate(
            profile.user?.employeeProfile?.dateOfBirth ?? '');
      } catch (e) {
        formattedDate = profile.user?.employeeProfile?.dateOfBirth;
      }
    }

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Email", value: profile.user?.email)),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Phone Number",
                          value: IStringUtils.convertNumber(
                              profile.user?.employeeProfile?.phoneNumber ??
                                  '-'))),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Gender",
                          value: profile.user?.employeeProfile?.gender ?? '-')),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Place of Birth",
                          value: profile.user?.employeeProfile?.placeOfBirth ??
                              '-')),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Born Date", value: formattedDate)),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Marital Status",
                          value: profile
                                  .user?.employeeProfile?.maritalStatusLabel ??
                              '-')),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Blood Type",
                          value:
                              profile.user?.employeeProfile?.bloodType ?? '-')),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: ProfileDetailItem(
                                label: "Height",
                                value: profile.user?.employeeProfile?.height !=
                                        null
                                    ? "${profile.user?.employeeProfile?.height} cm"
                                    : "-")),
                        Expanded(
                            child: ProfileDetailItem(
                                label: "Weight",
                                value: profile.user?.employeeProfile?.weight !=
                                        null
                                    ? "${profile.user?.employeeProfile?.weight} kg"
                                    : "-")),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "ID Number",
                          value: profile.user?.id != null
                              ? '${profile.user?.id}'
                              : '-')),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Taxpayer ID Number (NPWP)",
                          value: profile.user?.employeeProfile?.npwp ?? '-')),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Health Insurance Number (BPJS)",
                          value: profile.user?.employeeProfile?.bpjs ?? '-')),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Hobby",
                          value: profile.user?.employeeProfile?.hobby ?? '-')),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Citizen ID Address",
                          value:
                              profile.user?.employeeProfile?.citizenIdAddress ??
                                  '-')),
                  SizedBox(width: 16.w),
                ],
              ),
              SizedBox(height: 16.h),
              ProfileDetailItem(
                  label: "Residential Address",
                  value:
                      profile.user?.employeeProfile?.residentialAddress ?? '-'),
              SizedBox(height: 16.h),
              ProfileDetailItem(label: "Social Media", value: null),
              SizedBox(height: 8.h),

              // --- Dynamic Social Media List ---
              if (profile.user?.employeeProfile?.socialMediaAccounts == null)
                Text(
                  "No social media accounts linked.",
                  style: textTheme.bodyMedium,
                )
              else
                ...?profile.user?.employeeProfile?.socialMediaAccounts!.map(
                  (account) => Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: _buildSocialItem(
                      textTheme,
                      valueColor,
                      _getSocialIconPath(account.type),
                      account.url ?? '-', // Use the URL from the API
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  /// Helper for Social Media row
  Widget _buildSocialItem(
      TextTheme textTheme, Color valueColor, String iconPath, String handle) {
    return Row(
      children: [
        SvgPicture.asset(iconPath, width: 20.w, height: 20.h),
        SizedBox(width: 8.w),
        Text(
          handle,
          style: textTheme.bodyMedium?.copyWith(
            color: valueColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
