import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/performance/data/models/request/tracking_value_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/presentation/providers/performance_provider.dart';
import 'package:hrms_mobile/features/performance/presentation/widgets/okr/okr_card.dart';

class KeyResultDataScreen extends ConsumerStatefulWidget {
  final KeyResultDetail kr;
  final String objectiveTitle;
  final int memberCount;
  final int statusCode;
  final double progress;
  final String keyResultDesc;

  final int weeklyTarget;

  const KeyResultDataScreen({
    super.key,
    required this.kr,
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

  final Map<int, TextEditingController> _controllers = {};

  @override
  void dispose() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> _onSaveProgress() async {
    if (!_formKey.currentState!.validate()) {
      showCustomToast(context, 'Please fill all required fields correctly.',
          ToastType.info);
      return;
    }

    final List<TrackingValueRequest> requests =
        _controllers.entries.map((entry) {
      return TrackingValueRequest(
        keyResultId: widget.kr.id,
        trackingPeriodId: entry.key,
        actualValue: int.tryParse(entry.value.text) ?? 0,
      );
    }).toList();

    try {
      await ref.read(setTrackingValuePProvider.notifier).submitForm(
            request: requests,
            id: widget.kr.id,
          );

      if (mounted) {
        showCustomToast(
            context, 'Progress saved successfully!', ToastType.success);
        ref.invalidate(oKRTrackingRProvider(okrKeyResult: widget.kr.id));
      }
    } catch (error) {
      if (mounted) {
        if (error is ValidationException) {
          final exception = error;
          showCustomToast(context, exception.message, ToastType.error);
        } else if (error is DioException) {
          showCustomToast(context, error.message ?? 'A network error occurred.',
              ToastType.error);
        } else {
          showCustomToast(
              context,
              'An unexpected error occurred: ${error.toString()}',
              ToastType.error);
        }
      }
    }
  }

  Widget _buildWeeklyInputRow({
    required String weekLabel,
    required String dateLabel,
    required String targetValue,
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
                          if (value == null || value.isEmpty) return 'Required';
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
          Divider(color: IColors.light.grayscale.g20, height: 16.h),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final trackingAsync =
        ref.watch(oKRTrackingRProvider(okrKeyResult: widget.kr.id));

    final submissionState = ref.watch(setTrackingValuePProvider);
    final isSubmitting = submissionState is AsyncLoading;

    return Scaffold(
      appBar: IAppBar(title: "Key Result Data"),
      body: trackingAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
        data: (tracking) {
          // Initialize controllers for each period in the tracking table
          for (var item in tracking.trackingTable ?? []) {
            if (item.periodId != null &&
                !_controllers.containsKey(item.periodId)) {
              _controllers[item.periodId!] = TextEditingController(
                text: item.actualValue?.toString() ?? '0',
              );
            }
          }

          return Column(
            children: [
              Expanded(
                child: Form(
                  key: _formKey,
                  child: ListView(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                    children: [
                      _buildHeader(tracking),
                      SizedBox(height: 16.h),
                      ...(tracking.trackingTable ?? []).map((item) {
                        return _buildWeeklyInputRow(
                          weekLabel: item.label ?? '',
                          dateLabel: "Target for this period",
                          targetValue: item.targetValue ?? "",
                          controller: _controllers[item.periodId]!,
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
              IFooterButton(
                text: isSubmitting ? "Saving..." : "Save",
                onPressed: isSubmitting ? null : _onSaveProgress,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildHeader(OKRTracking tracking) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('OBJECTIVE',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: IColors.light.grayscale.g50,
                fontWeight: FontWeight.w600)),
        SizedBox(height: 4.h),
        Text(
          widget.objectiveTitle,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold, color: IColors.light.primary.main),
        ),
        SizedBox(height: 16.h),
        OKRCard(
          kr: widget.kr.copyWith(updatedAt: tracking.updatedAt),
          // Pass the latest update time
          memberCount: 1,
          statusCode: tracking.status ?? 0,
          progress: (tracking.progress ?? 0).toDouble(),
          desc: tracking.title ?? '',
          onTap: () {},
        ),
      ],
    );
  }
}
