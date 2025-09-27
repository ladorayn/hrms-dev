import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/core/constants/attendance_enum.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/features/attendance/presentation/widgets/attendance_form.dart';

class AttendanceFormScreen extends ConsumerStatefulWidget {
  final AttendanceEnum activity;
  const AttendanceFormScreen({
    super.key,
    required this.activity,
  });

  @override
  ConsumerState<AttendanceFormScreen> createState() =>
      _AttendanceFormScreenState();
}

class _AttendanceFormScreenState extends ConsumerState<AttendanceFormScreen> {
  // Controllers to manage the state of the form fields
  late final TextEditingController _shiftController;
  late final TextEditingController _notesController;

  final List<String> _shiftOptions = [
    "Regular Shift",
    "Half Day",
    "Shift 1",
    "Shift 2",
    "Shift 3",
  ];

  String? _selectedShift;

  @override
  void initState() {
    super.initState();
    _shiftController = TextEditingController();
    _notesController = TextEditingController();
  }

  @override
  void dispose() {
    _shiftController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: IAppBar(title: widget.activity.title),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  AttendanceCardForm(
                    clockIn: "08:00 AM",
                    clockOut: "-",
                    date: "27 Agustus, 2025",
                    location: "test",
                    overtime: "0h 0m",
                  ),
                  ITextFieldDropdownBottomSheet(
                    label: "Shift",
                    controller: _shiftController,
                    options: _shiftOptions,
                    onOptionSelected: (selectedOption) {
                      setState(() {
                        _selectedShift = selectedOption;
                      });
                    },
                    isRequired: true,
                  ),
                  ITextFieldTextArea(
                    label: "Notes",
                    labelStyle: textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          IFooterButton(
            onPressed: () {
              globalNavigatorKey.currentContext?.go(RoutePaths.dashboard);
            },
            text: "Save ${widget.activity.capitalizeSentence}",
          ),
        ],
      ),
    );
  }
}
