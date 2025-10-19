import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';

class IAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final bool centerTitle;
  final bool noIcon;

  const IAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.centerTitle = false,
    this.noIcon = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: centerTitle,
      surfaceTintColor: Colors.white,
      scrolledUnderElevation: 0.0,
      title: Text(
        title,
        style: textTheme.titleLarge?.copyWith(fontSize: 18.sp),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
      leading: (!noIcon)
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              color: IColors.light.primary.hover,
              onPressed:
                  onBack ?? () => globalNavigatorKey.currentContext?.pop(),
            )
          : null,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(
          height: 1,
          color: Colors.grey.shade300,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
