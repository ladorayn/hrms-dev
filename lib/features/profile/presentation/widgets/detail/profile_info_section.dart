import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/profile_detail_item.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/section_title.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final valueColor = Colors.black;

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle("Personal Information"),
          SizedBox(height: 16.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Email", value: "olivia@gmail.com")),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Phone Number", value: "+62 851239874621")),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child:
                          ProfileDetailItem(label: "Gender", value: "Female")),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Place of Birth", value: "Surabaya")),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Born Date", value: "January 1, 1987")),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Marital Status", value: "Married")),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child:
                          ProfileDetailItem(label: "Blood Type", value: "AB")),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: ProfileDetailItem(
                                label: "Height", value: "179 cm")),
                        Expanded(
                            child: ProfileDetailItem(
                                label: "Weight", value: "80 kg")),
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
                          label: "ID Number", value: "340197897650002")),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Taxpayer ID Number (NPWP)",
                          value: "12.345.678.9-012.000")),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Health Insurance Number (BPJS)",
                          value: "0001234567890")),
                  SizedBox(width: 16.w),
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Hobby", value: "Photography")),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ProfileDetailItem(
                          label: "Citizen ID Address", value: "Yogyakarta")),
                  SizedBox(width: 16.w),
                ],
              ),
              SizedBox(height: 16.h),
              ProfileDetailItem(label: "Residential Address", value: "Jakarta"),
              SizedBox(height: 16.h),
              ProfileDetailItem(label: "Social Media", value: null),
              _buildSocialItem(
                  textTheme, valueColor, IAssets.instagram, "@olivia"),
              SizedBox(height: 8.h),
              _buildSocialItem(
                  textTheme, valueColor, IAssets.twitter, "@olivia"),
              SizedBox(height: 8.h),
              _buildSocialItem(
                  textTheme, valueColor, IAssets.linkedin, "@olivia"),
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
