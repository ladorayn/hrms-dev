import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/logout/logout_provider.dart';

class ProfileAppBar extends ConsumerWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              l10n.navProfile,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            // The style is minimal by default
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {
              ref.read(logoutProvider.notifier).submit();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  l10n.profileLogOut,
                  style: TextStyle(color: IColors.light.error.main),
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(IAssets.logout),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
