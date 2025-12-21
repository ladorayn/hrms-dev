import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_validate_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_response.dart';
import 'package:hrms_mobile/features/offboarding/presentation/providers/offboarding_provider.dart';

class DocumentHandoverValidateScreen extends ConsumerStatefulWidget {
  final String offboardingId;

  const DocumentHandoverValidateScreen({
    super.key,
    required this.offboardingId,
  });

  @override
  ConsumerState<DocumentHandoverValidateScreen> createState() =>
      _DocumentHandoverValidateScreenState();
}

class _DocumentHandoverValidateScreenState
    extends ConsumerState<DocumentHandoverValidateScreen> {
  final Map<int, TextEditingController> _controllers = {};

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final docHandoverAsync = ref.watch(
      offboardingGetHandoverProvider(
        offboardingId: widget.offboardingId,
        category: 'document',
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const IAppBar(title: "Document Handover"),
      body: docHandoverAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
        data: (list) {
          if (list.isEmpty) {
            return const Center(child: Text("No documents found"));
          }

          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            itemCount: list.length,
            itemBuilder: (context, index) {
              final item = list[index];

              final controller = _controllers.putIfAbsent(
                item.id ?? 0,
                () => TextEditingController(text: item.name),
              );

              return _DocumentHandoverCard(
                item: item,
                controller: controller,
                offboardingId: widget.offboardingId,
              );
            },
          );
        },
      ),
    );
  }
}

/// ---------------------------------------------------------------------------
/// CARD — PER DOCUMENT VALIDATION
/// ---------------------------------------------------------------------------
class _DocumentHandoverCard extends ConsumerWidget {
  final HandoverItem item;
  final TextEditingController controller;
  final String offboardingId;

  const _DocumentHandoverCard({
    required this.item,
    required this.controller,
    required this.offboardingId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final submissionState =
        ref.watch(validateHandoverSubmissionProvider(item.id ?? 0));

    // Listen PER ITEM (not global)
    ref.listen(
      validateHandoverSubmissionProvider(item.id ?? 0),
      (_, next) {
        next.whenOrNull(
          data: (_) {
            showCustomToast(
              context,
              "Handover validated successfully!",
              ToastType.success,
            );
            ref.invalidate(offboardingGetHandoverProvider);
          },
          error: (err, _) {
            showCustomToast(
              context,
              err.toString(),
              ToastType.error,
            );
          },
        );
      },
    );

    final isLoading = submissionState.isLoading;

    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ITextFieldBase(
              controller: controller,
              label: "Document Name",
              isRequired: true,
              readOnly: true,
              enabled: false,
              borderColor: IColors.light.grayscale.g30,
              labelStyle: textTheme.bodySmall,
            ),
            SizedBox(height: 12.h),
            ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () {
                      ref
                          .read(
                            validateHandoverSubmissionProvider(item.id ?? 0)
                                .notifier,
                          )
                          .validateForm(
                            request: HandoverValidateRequest(
                              handoverAssetId: item.id ?? 0,
                            ),
                            offboardingId: offboardingId,
                          );
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF335C81),
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 40.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                elevation: 0,
              ),
              child: Text(
                isLoading ? "Validating..." : "Validate Now",
                style: textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
