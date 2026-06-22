import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final bool showDivider;

  const ProfileMenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Icon(icon, color: Colors.grey.shade700),
          title:
              Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
          subtitle: subtitle == null
              ? null
              : Text(
                  subtitle!,
                  style: TextStyle(
                    color: IColors.light.grayscale.g20,
                    fontSize: 13,
                  ),
                ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: IColors.light.grayscale.g20,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        ),
        if (showDivider) Divider(height: 1, color: IColors.light.grayscale.g10),
      ],
    );
  }
}
