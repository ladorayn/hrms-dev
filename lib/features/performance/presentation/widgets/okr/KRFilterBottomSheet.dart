import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  void _handleApply() {
    Map<String, dynamic> params = {};
    final sY = _startYearCtrl.text;
    final eY = _endYearCtrl.text;

    switch (widget.frequency) {
      case 0: // Weekly: YYYY-W[01-53]
        params = {
          'start_week': '$sY-${_startValCtrl.text.replaceAll("Week ", "W")}',
          'end_week': '$eY-${_endValCtrl.text.replaceAll("Week ", "W")}',
        };
        break;
      case 1: // Monthly: YYYY-[01-12]-1
        final sM = _getMonthIndex(_startValCtrl.text);
        final eM = _getMonthIndex(_endValCtrl.text);
        params = {'start_month': '$sY-$sM-1', 'end_month': '$eY-$eM-1'};
        break;
      case 2: // Quarterly: Integer 1-10
        params = {
          'start_quarter':
              int.tryParse(_startValCtrl.text.replaceAll("Q", "")) ?? 1,
          'end_quarter':
              int.tryParse(_endValCtrl.text.replaceAll("Q", "")) ?? 4,
        };
        break;
      case 3: // Yearly: YYYY
        params = {'start_year': sY, 'end_year': eY};
        break;
      case 4: // Daily: YYYY-MM-DD
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

  String _getMonthIndex(String name) {
    int idx = [
          "January",
          "February",
          "March",
          "April",
          "May",
          "June",
          "July",
          "August",
          "September",
          "October",
          "November",
          "December"
        ].indexOf(name) +
        1;
    return idx.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          20.w, 20.h, 20.w, 40.h + MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Select Range",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 24.h),
          if (widget.frequency == 4) _buildDailySection(),
          if (widget.frequency != 4) _buildGridSection(),
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
              child: const Text("Apply Filter",
                  style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDailySection() {
    return Column(
      children: [
        ITextFieldDatePicker(
            label: "Start Date", onDateChanged: (d) => _startDate = d),
        SizedBox(height: 16.h),
        ITextFieldDatePicker(
            label: "End Date", onDateChanged: (d) => _endDate = d),
      ],
    );
  }

  Widget _buildGridSection() {
    return Column(
      children: [
        _buildInputRow(isStart: true),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text("TO",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))),
        ),
        _buildInputRow(isStart: false),
      ],
    );
  }

  Widget _buildInputRow({required bool isStart}) {
    final label = switch (widget.frequency) {
      0 => "Week",
      1 => "Month",
      2 => "Quarter",
      _ => "Year"
    };
    final options = _getOptions();

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
            label: "Year*",
            controller: isStart ? _startYearCtrl : _endYearCtrl,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
      ],
    );
  }

  List<String> _getOptions() {
    if (widget.frequency == 0) return List.generate(53, (i) => "Week ${i + 1}");
    if (widget.frequency == 1)
      return [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December"
      ];
    if (widget.frequency == 2) return ["Q1", "Q2", "Q3", "Q4"];
    return [];
  }
}
