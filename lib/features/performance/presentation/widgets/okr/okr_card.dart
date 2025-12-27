import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/util/datetime_utils.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';

class OKRCard extends StatelessWidget {
  final KeyResultDetail? kr;
  final int memberCount;
  final int statusCode;
  final double progress;
  final String desc;
  final VoidCallback onTap;

  const OKRCard({
    super.key,
    this.kr,
    this.memberCount = 7,
    this.statusCode = 1,
    this.progress = 72,
    this.desc = "-",
    required this.onTap,
  });

  final double avatarRadius = 12;
  final double avatarOverlap = 8;

  double get singleAvatarWidth => 2 * avatarRadius;

  double get overlapSpace => singleAvatarWidth - avatarOverlap;

  Map<String, dynamic> _getStatusStyles() {
    switch (statusCode) {
      case 1:
        return {
          'text': kr?.statusLabel,
          'color': IColors.light.primary.main,
          'background': IColors.light.primary.background,
        };
      case 2:
        return {
          'text': kr?.statusLabel,
          'color': IColors.light.success.main,
          'background': IColors.light.success.background,
        };
      case 0:
      default:
        return {
          'text': kr?.statusLabel,
          'color': IColors.light.warning.main,
          'background': IColors.light.warning.background,
        };
    }
  }

  Widget _buildAvatarStack(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final int maxDisplay = 3;
    final int extraCount =
        memberCount > maxDisplay ? memberCount - (maxDisplay - 1) : 0;
    final int displayCount =
        memberCount > maxDisplay ? maxDisplay : memberCount;

    List<Widget> stackChildren = [];
    double stackWidth;

    if (memberCount <= 1) {
      stackWidth = singleAvatarWidth.r;
    } else {
      stackWidth = (displayCount * singleAvatarWidth).r -
          ((displayCount - 1) * avatarOverlap).r;
    }

    if (extraCount > 0) {
      stackChildren.add(
        Positioned(
          right: 0,
          child: Container(
            width: singleAvatarWidth.r,
            height: singleAvatarWidth.r,
            decoration: BoxDecoration(
              color: IColors.light.primary.background,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              "+$extraCount",
              style: textTheme.labelSmall?.copyWith(
                color: IColors.light.primary.main,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
    } else if (memberCount > 0) {
      stackChildren.add(
        Positioned(
          right: 0,
          child: CircleAvatar(
            radius: avatarRadius.r,
            backgroundColor: Colors.teal.shade100,
          ),
        ),
      );
    }

    int avatarsToPlaceLeft;
    if (extraCount > 0) {
      avatarsToPlaceLeft = 2;
    } else if (memberCount > 0) {
      avatarsToPlaceLeft = memberCount - 1;
    } else {
      avatarsToPlaceLeft = 0;
    }

    for (int i = 1; i <= avatarsToPlaceLeft; i++) {
      double rightOffset = i * overlapSpace;

      Color color = i == 1 ? Colors.indigo.shade100 : Colors.pink.shade100;

      stackChildren.add(
        Positioned(
          right: rightOffset.r,
          child: CircleAvatar(
            radius: avatarRadius.r,
            backgroundColor: color,
          ),
        ),
      );
    }

    if (memberCount > 1) {
      stackChildren = stackChildren.reversed.toList();
    }

    return SizedBox(
      width: stackWidth,
      height: singleAvatarWidth.r,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: stackChildren,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final statusStyles = _getStatusStyles();

    final String formattedProgress = (progress == progress.toInt().toDouble())
        ? progress.toInt().toString()
        : progress.toStringAsFixed(1);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1, color: IColors.light.grayscale.g20)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "KEY RESULT",
                      style: textTheme.labelSmall?.copyWith(
                          color: IColors.light.grayscale.g50,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      DateTimeHelper.getTimeAgo(kr?.updatedAt),
                      style: textTheme.labelSmall?.copyWith(
                        color: IColors.light.grayscale.gNew,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: statusStyles['background'] as Color,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 6.r,
                            height: 6.r,
                            decoration: BoxDecoration(
                                color: statusStyles['color'] as Color,
                                shape: BoxShape.circle),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            statusStyles['text'] as String,
                            style: textTheme.labelSmall?.copyWith(
                                color: statusStyles['color'] as Color,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 8.w),
                    _buildAvatarStack(context),
                  ],
                )
              ],
            ),
            SizedBox(height: 12.h),
            Text(kr?.title ?? '-'),
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      LayoutBuilder(builder: (context, constraints) {
                        return Container(
                          width: constraints.maxWidth,
                          height: 4.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: IColors.light.primary.background,
                          ),
                        );
                      }),
                      LayoutBuilder(builder: (context, constraints) {
                        return Container(
                          width: constraints.maxWidth * progress / 100,
                          height: 4.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: IColors.light.primary.hover,
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                SizedBox(
                  width: 35.w,
                  child: Text(
                    "$formattedProgress %",
                    style: textTheme.labelSmall?.copyWith(
                        color: IColors.light.primary.main,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
