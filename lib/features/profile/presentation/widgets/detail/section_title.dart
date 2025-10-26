import 'package:flutter/material.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: IColors.light.primary.main,
            fontWeight: FontWeight.w700,
          ),
    );
  }
}
