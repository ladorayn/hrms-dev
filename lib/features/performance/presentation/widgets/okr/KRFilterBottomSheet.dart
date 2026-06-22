import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_date_picker.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart';
import 'package:intl/intl.dart';

class KRFilterBottomSheet extends StatefulWidget {
  final int frequency;
  final Function(Map<String, dynamic> params) onApply;

  const KRFilterBottomSheet(
      {super.key, required this.frequency, required this.onApply});

  @override
  State<KRFilterBottomSheet> createState() => _KRFilterBottomSheetState();
}

class _KRFilterBottomSheetState extends State<KRFilterBottomSheet> {
  final _startYearCtrl =
      TextEditingController(text: DateTime.now().year.toString());
  final _endYearCtrl =
      TextEditingController(text: DateTime.now().year.toString());
  final _startValCtrl = TextEditingController();
  final _endValCtrl = TextEditingController();

  DateTime? _startDate;
  DateTime? _endDate;

  int _extractWeekNumber(String value) {
    final match = RegExp(r'\d+').firstMatch(value);
    return int.tryParse(match?.group(0) ?? '') ?? 1;
  }

  void _handleApply() {
    Map<String, dynamic> params = {};
    final sY = _startYearCtrl.text;
    final eY = _endYearCtrl.text;

    switch (widget.frequency) {
      case 0:
        params = {
          'start_week': '$sY-W${_extractWeekNumber(_startValCtrl.text).toString().padLeft(2, '0')}',
          'end_week': '$eY-W${_extractWeekNumber(_endValCtrl.text).toString().padLeft(2, '0')}',
        };
        break;
      case 1:
        final sM = _getMonthIndex(_startValCtrl.text);
        final eM = _getMonthIndex(_endValCtrl.text);
        params = {'start_month': '$sY-$sM-1', 'end_month': '$eY-$eM-1'};
        break;
      case 2:
        params = {
          'start_quarter':
              int.tryParse(_startValCtrl.text.replaceAll("Q", "")) ?? 1,
          'end_quarter':
              int.tryParse(_endValCtrl.text.replaceAll("Q", "")) ?? 4,
        };
        break;
      case 3:
        params = {'start_year': sY, 'end_year': eY};
        break;
      case 4:
        if (_startDate != null && _endDate != null) {
          params = {
            'start_date': DateFormat('yyyy-MM-dd').format(_startDate!),
            'end_date': DateFormat('yyyy-MM-dd').format(_endDate!),
          };
        }
        break;
    }
    widget.onApply(params);
    Navigator.pop(context);
  }

  List<String> _getMonthOptions() {
    final locale = Localizations.localeOf(context).toString();
    return List.generate(
      12,
      (i) => DateFormat.MMMM(locale).format(DateTime(2024, i + 1)),
    );
  }

  String _getMonthIndex(String name) {
    final idx = _getMonthOptions().indexOf(name) + 1;
    return idx.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.fromLTRB(
          20.w, 20.h, 20.w, 40.h + MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(l10n.performanceSelectRange,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 24.h),
          if (widget.frequency == 4) _buildDailySection(l10n),
          if (widget.frequency != 4) _buildGridSection(l10n),
          SizedBox(height: 32.h),
          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: IColors.light.primary.main,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r))),
              onPressed: _handleApply,
              child: Text(l10n.performanceApplyFilter,
                  style: const TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDailySection(AppLocalizations l10n) {
    return Column(
      children: [
        ITextFieldDatePicker(
            label: l10n.performanceStartDate,
            onDateChanged: (d) => _startDate = d),
        SizedBox(height: 16.h),
        ITextFieldDatePicker(
            label: l10n.performanceEndDate, onDateChanged: (d) => _endDate = d),
      ],
    );
  }

  Widget _buildGridSection(AppLocalizations l10n) {
    return Column(
      children: [
        _buildInputRow(l10n, isStart: true),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(l10n.performanceTo,
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))),
        ),
        _buildInputRow(l10n, isStart: false),
      ],
    );
  }

  Widget _buildInputRow(AppLocalizations l10n, {required bool isStart}) {
    final label = switch (widget.frequency) {
      0 => l10n.performanceWeek,
      1 => l10n.performanceMonth,
      2 => l10n.performanceQuarter,
      _ => l10n.performanceYear
    };
    final options = _getOptions(l10n);

    return Row(
      children: [
        if (widget.frequency != 3) ...[
          Expanded(
            child: ITextFieldDropdownBottomSheet(
              label: "$label*",
              controller: isStart ? _startValCtrl : _endValCtrl,
              options: options,
              onOptionSelected: (val) {},
            ),
          ),
          SizedBox(width: 12.w),
        ],
        Expanded(
          child: ITextFieldBase(
            label: l10n.performanceYearRequired,
            controller: isStart ? _startYearCtrl : _endYearCtrl,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
      ],
    );
  }

  List<String> _getOptions(AppLocalizations l10n) {
    if (widget.frequency == 0) {
      return List.generate(53, (i) => l10n.performanceWeekLabel(i + 1));
    }
    if (widget.frequency == 1) return _getMonthOptions();
    if (widget.frequency == 2) return ["Q1", "Q2", "Q3", "Q4"];
    return [];
  }
}
