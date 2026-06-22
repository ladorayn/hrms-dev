// lib/core/widgets/text_field/variants/i_text_field_time_picker.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';

class ITextFieldTimePicker extends StatefulWidget {
  const ITextFieldTimePicker({
    super.key,
    required this.label,
    this.controller,
    this.initialTime,
    this.onTimeChanged,
    this.validator,
    this.errorText,
    this.isRequired = false,
  });

  final String label;
  final TextEditingController? controller;
  final TimeOfDay? initialTime;
  final Function(TimeOfDay)? onTimeChanged;
  final String? Function(String?)? validator;
  final String? errorText;
  final bool isRequired;

  @override
  State<ITextFieldTimePicker> createState() => _ITextFieldTimePickerState();
}

class _ITextFieldTimePickerState extends State<ITextFieldTimePicker> {
  late final TextEditingController _controller;
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _selectedTime = widget.initialTime;

    // Set initial text if initialTime is provided
    if (_selectedTime != null) {
      _setTextFromTimeOfDay(_selectedTime!);
    }
  }

  // Handle the case where the parent widget provides a new controller
  @override
  void didUpdateWidget(covariant ITextFieldTimePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      _controller = widget.controller ?? TextEditingController();
    }

    if (widget.initialTime != oldWidget.initialTime) {
      _selectedTime = widget.initialTime;
      if (_selectedTime != null) {
        _setTextFromTimeOfDay(_selectedTime!);
      }
    }
  }

  // Dispose the controller only if it was created by this widget
  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  /// Opens the time picker dialog and handles the selected time.
  Future<void> _selectTime(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
      confirmText: l10n.coreConfirmOk,
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
        _setTextFromTimeOfDay(picked);
        widget.onTimeChanged?.call(picked);
      });
    }
  }

  void _setTextFromTimeOfDay(TimeOfDay time) {
    // MaterialLocalizations provides a locale-aware way to format time.
    // final localizations = MaterialLocalizations.of(context);
    // _controller.text =
    //     localizations.formatTimeOfDay(time, alwaysUse24HourFormat: false);
    _controller.text = _formatTime12Hour(time);
  }

  String _formatTime12Hour(TimeOfDay time) {
    final hour = time.hourOfPeriod; // Hour in 12-hour format (1-12)
    final minute = time.minute.toString().padLeft(2, '0');
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';

    // Handle the case of 12 AM (midnight) which is hour 0
    final displayHour = hour == 0 ? 12 : hour;

    return '$displayHour:$minute $period';
  }

  @override
  Widget build(BuildContext context) {
    return ITextFieldBase(
      controller: _controller,
      isRequired: widget.isRequired,
      label: widget.label,
      readOnly: false,
      validator: widget.validator,
      borderColor: IColors.light.grayscale.g30,
      suffixIcon: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: SvgPicture.asset(
          IAssets.attendanceClock,
          height: 24.0,
          width: 24.0,
          colorFilter: ColorFilter.mode(
            IColors.light.grayscale.g30,
            BlendMode.srcIn,
          ),
        ),
      ),
      onTap: () {
        _selectTime(context);
      },
      errorText: widget.errorText,
    );
  }
}
