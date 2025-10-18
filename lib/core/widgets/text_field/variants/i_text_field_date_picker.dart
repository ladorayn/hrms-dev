// lib/core/widgets/text_field/variants/i_text_field_date_picker.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';
import 'package:intl/intl.dart';

class ITextFieldDatePicker extends StatefulWidget {
  const ITextFieldDatePicker({
    super.key,
    required this.label,
    this.controller,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onDateChanged,
    this.validator,
    this.errorText,
    this.isRequired = false,
  });

  final String label;
  final TextEditingController? controller;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Function(DateTime)? onDateChanged;
  final String? Function(String?)? validator;
  final String? errorText;
  final bool isRequired;

  @override
  State<ITextFieldDatePicker> createState() => _ITextFieldDatePickerState();
}

class _ITextFieldDatePickerState extends State<ITextFieldDatePicker> {
  late final TextEditingController _controller;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _selectedDate = widget.initialDate;

    // Set initial text if initialDate is provided
    if (_selectedDate != null) {
      _setTextFromDateTime(_selectedDate!);
    }
  }

  @override
  void didUpdateWidget(covariant ITextFieldDatePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      _controller = widget.controller ?? TextEditingController();
    }

    if (widget.initialDate != oldWidget.initialDate) {
      _selectedDate = widget.initialDate;
      if (_selectedDate != null) {
        _setTextFromDateTime(_selectedDate!);
      } else {
        _controller.clear();
      }
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: widget.lastDate ?? DateTime(2100),
      confirmText: 'Oke',
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _setTextFromDateTime(picked);
        widget.onDateChanged?.call(picked);
      });
    }
  }

  void _setTextFromDateTime(DateTime date) {
    _controller.text = DateFormat('MMMM d, y').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return ITextFieldBase(
      controller: _controller,
      isRequired: widget.isRequired,
      label: widget.label,
      readOnly: true,
      validator: widget.validator,
      borderColor: IColors.light.grayscale.g30,
      suffixIcon: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: SvgPicture.asset(
          IAssets.calendar,
          height: 24.0,
          width: 24.0,
          colorFilter: ColorFilter.mode(
            IColors.light.grayscale.g30,
            BlendMode.srcIn,
          ),
        ),
      ),
      onTap: () {
        _selectDate(context);
      },
      errorText: widget.errorText,
    );
  }
}
