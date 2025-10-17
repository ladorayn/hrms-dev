import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_attendance_bottom_sheet.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';

class OvertimeRequestScreen extends ConsumerStatefulWidget {
  const OvertimeRequestScreen({
    super.key,
  });

  @override
  ConsumerState<OvertimeRequestScreen> createState() =>
      _OvertimeRequestScreenState();
}

class _OvertimeRequestScreenState extends ConsumerState<OvertimeRequestScreen> {
  late final TextEditingController _attendanceDateController;
  late final TextEditingController _notesController;

  final List<String> _shiftOptions = [
    "Regular Shift",
    "Half Day",
    "Shift 1",
    "Shift 2",
    "Shift 3",
  ];

  String? _selectedAttendanceDate;

  @override
  void initState() {
    super.initState();
    _attendanceDateController = TextEditingController();
    _notesController = TextEditingController();
  }

  @override
  void dispose() {
    _attendanceDateController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: IAppBar(title: "Overtime Request"),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  // AttendanceCardForm(
                  //   clockIn: "08:00 AM",
                  //   clockOut: "-",
                  //   date: "27 Agustus, 2025",
                  //   location: "test",
                  //   overtime: "0h 0m",
                  // ),
                  ITextFieldDropdownAttendanceBottomSheet(
                    label: "Attendance Date",
                    labelStyle: textTheme.bodySmall,
                    subLabel: "Select attendance date record",
                    controller: _attendanceDateController,
                    options: _shiftOptions,
                    onOptionSelected: (selectedOption) {
                      setState(() {
                        _selectedAttendanceDate = selectedOption;
                      });
                    },
                    isRequired: true,
                  ),
                  ITextFieldTextArea(
                    label: "Notes",
                    labelStyle: textTheme.bodySmall,
                    isRequired: true,
                  ),
                ],
              ),
            ),
          ),
          IFooterButton(
            onPressed: () {
              globalNavigatorKey.currentContext?.go(RoutePaths.dashboard);
            },
            text: "Request Overtime",
          ),
        ],
      ),
    );
  }
}
