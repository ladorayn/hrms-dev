// lib/core/widgets/month_selector.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:intl/intl.dart';

class MonthSelector extends ConsumerStatefulWidget {
  const MonthSelector({
    super.key,
    required this.onMonthChanged,
  });

  // Callback to notify the parent widget when the month changes
  final void Function(DateTime) onMonthChanged;

  @override
  ConsumerState<MonthSelector> createState() => _MonthSelectorState();
}

class _MonthSelectorState extends ConsumerState<MonthSelector> {
  late DateTime _selectedDate;
  final DateTime _currentDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    // Default to the current month when the widget is first created
    _selectedDate = DateTime(_currentDate.year, _currentDate.month, 1);
    // Notify parent of the initial month
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onMonthChanged(_selectedDate);
    });
  }

  /// Checks if the next month is in the future.
  bool get _isNextMonthDisabled {
    return _selectedDate.year == _currentDate.year &&
        _selectedDate.month == _currentDate.month;
  }

  void _goToPreviousMonth() {
    setState(() {
      _selectedDate = DateTime(_selectedDate.year, _selectedDate.month - 1, 1);
    });
    widget.onMonthChanged(_selectedDate);
  }

  void _goToNextMonth() {
    if (_isNextMonthDisabled) return; // Extra safety check
    setState(() {
      _selectedDate = DateTime(_selectedDate.year, _selectedDate.month + 1, 1);
    });
    widget.onMonthChanged(_selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    // Format the date to "Month Year" e.g., "September 2025"
    final formattedDate = DateFormat('MMMM yyyy').format(_selectedDate);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _monthArrowButton(Icons.arrow_back_ios_new, _goToPreviousMonth),
        const SizedBox(width: 16),
        SizedBox(
          width: 150,
          child: Center(
            child: Text(
              formattedDate,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: IColors.light.primary.main,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        _monthArrowButton(
          Icons.arrow_forward_ios_outlined,
          _isNextMonthDisabled ? null : _goToNextMonth,
        ),
      ],
    );
  }

  /// Helper for Month Buttons (can be kept here or moved)
  Widget _monthArrowButton(IconData icon, VoidCallback? onPressed) {
    // Check if the button should be disabled
    final bool isDisabled = onPressed == null;
    final color = isDisabled
        ? IColors.light.grayscale.g30 // Disabled color
        : IColors.light.primary.main; // Enabled color

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.zero,
        padding: const EdgeInsets.all(6),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: color, width: 1),
        ),
      ),
      child: Icon(icon, size: 16, color: color),
    );
  }
}
