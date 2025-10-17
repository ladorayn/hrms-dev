import 'package:flutter/material.dart';
import 'package:hrms_mobile/features/offboarding/domain/entities/offboarding_step.dart';
import 'package:timeline_tile/timeline_tile.dart';

class StepItem extends StatelessWidget {
  final OffboardingStepModel step;
  final bool isFirst;
  final bool isLast;
  final bool isCompleted;
  final bool isActive;

  const StepItem({
    super.key,
    required this.step,
    required this.isFirst,
    required this.isLast,
    required this.isCompleted,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TimelineTile();
  }
}
