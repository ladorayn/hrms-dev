import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/okr_card.dart';

class KeyResultDataScreen extends ConsumerStatefulWidget {
  final String objectiveTitle;
  final int memberCount;
  final int statusCode;
  final double progress;
  final String keyResultDesc;

  final int weeklyTarget;

  const KeyResultDataScreen({
    super.key,
    required this.objectiveTitle,
    required this.memberCount,
    required this.statusCode,
    required this.progress,
    required this.keyResultDesc,
    this.weeklyTarget = 120,
  });

  @override
  ConsumerState<KeyResultDataScreen> createState() =>
      _KeyResultDataScreenState();
}

class _KeyResultDataScreenState extends ConsumerState<KeyResultDataScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isSaving = false;
  final List<Map<String, dynamic>> _weeklyData = [
    {
      'weekLabel': 'Week 44',
      'dateLabel': '26 Oct 2025',
      'controller': TextEditingController()
    },
    {
      'weekLabel': 'Week 45',
      'dateLabel': '02 Nov 2025',
      'controller': TextEditingController()
    },
    {
      'weekLabel': 'Week 46',
      'dateLabel': '09 Nov 2025',
      'controller': TextEditingController()
    },
    {
      'weekLabel': 'Week 47',
      'dateLabel': '16 Nov 2025',
      'controller': TextEditingController()
    },
    {
      'weekLabel': 'Week 48',
      'dateLabel': '23 Nov 2025',
      'controller': TextEditingController()
    },
    {
      'weekLabel': 'Week 40',
      'dateLabel': '30 Nov 2025',
      'controller': TextEditingController()
    },
    {
      'weekLabel': 'Week 50',
      'dateLabel': '07 Dec 2025',
      'controller': TextEditingController()
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    for (var data in _weeklyData) {
      (data['controller'] as TextEditingController).dispose();
    }
    super.dispose();
  }

  Future<void> _onSaveProgress() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isSaving = true;
    });

    try {
      await Future.delayed(const Duration(seconds: 1));

      if (mounted) {
        // Example: Collect data
        // final savedData = _weeklyData.map((e) => {
        //   'week': e['weekLabel'],
        //   'value': e['controller'].text
        // }).toList();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Progress saved successfully!')),
        );
        // context.pop(); // Navigate back after success
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Save Failed: ${e.toString()}')),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  Widget _buildWeeklyInputRow({
    required String weekLabel,
    required String dateLabel,
    required int targetValue,
    required TextEditingController controller,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    weekLabel,
                    style: textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    dateLabel,
                    style: textTheme.labelSmall
                        ?.copyWith(color: IColors.light.grayscale.g50),
                  ),
                ],
              ),
              Container(
                width: 150.w,
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: IColors.light.grayscale.g30),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value != null && value.isNotEmpty) {
                            final number = int.tryParse(value);
                            if (number == null) {
                              return '';
                            }
                            if (number > targetValue) {
                              return '';
                            }
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: '0',
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Text(
                      ' /${targetValue.toString()}',
                      style: textTheme.bodyMedium
                          ?.copyWith(color: IColors.light.grayscale.g50),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: IColors.light.grayscale.g20,
            height: 16.h,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(title: "Key Result Data"),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
            child: Form(
              key: _formKey,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                children: [
                  Text(
                    'OBJECTIVE',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: IColors.light.grayscale.g50,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    widget.objectiveTitle,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: IColors.light.primary.main),
                  ),
                  SizedBox(height: 16.h),
                  OKRCard(
                    memberCount: widget.memberCount,
                    statusCode: widget.statusCode,
                    progress: widget.progress,
                    desc: widget.keyResultDesc,
                    onTap: () {},
                  ),
                  SizedBox(height: 16.h),

                  // Dynamic Weekly Progress Inputs
                  ..._weeklyData
                      .map((data) => _buildWeeklyInputRow(
                            weekLabel: data['weekLabel'],
                            dateLabel: data['dateLabel'],
                            targetValue: widget.weeklyTarget,
                            controller: data['controller'],
                          ))
                      .toList(),
                ],
              ),
            ),
          ),
          IFooterButton(
            text: _isSaving ? "Saving..." : "Save",
            onPressed: _isSaving ? null : _onSaveProgress,
          ),
        ],
      ),
    );
  }
}
