import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/auth/auth_provider.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_validate_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_response.dart';
import 'package:hrms_mobile/features/offboarding/presentation/providers/offboarding_provider.dart';

class WorkHandoverValidateScreen extends ConsumerStatefulWidget {
  final String offboardingId;

  const WorkHandoverValidateScreen({
    super.key,
    required this.offboardingId,
  });

  @override
  ConsumerState<WorkHandoverValidateScreen> createState() =>
      _WorkHandoverValidateScreenState();
}

class _WorkHandoverValidateScreenState
    extends ConsumerState<WorkHandoverValidateScreen> {
  final Map<int, TextEditingController> _controllers = {};

  @override
  void dispose() {
    for (final c in _controllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final authP = ref.watch(authProvider);
    final workHandoverAsync = ref.watch(
      offboardingGetHandoverProvider(
        offboardingId: widget.offboardingId,
        category: 'work',
        userId: authP.value!.id.toString(),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: IAppBar(title: l10n.offboardingWorkHandover),
      body: workHandoverAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) =>
            Center(child: Text(l10n.offboardingError(err.toString()))),
        data: (list) {
          if (list.isEmpty) {
            return Center(child: Text(l10n.offboardingNoItemsFound));
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

              return _WorkHandoverCard(
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
/// CARD — PER ITEM VALIDATION
/// ---------------------------------------------------------------------------
class _WorkHandoverCard extends ConsumerWidget {
  final HandoverItem item;
  final TextEditingController controller;
  final String offboardingId;

  const _WorkHandoverCard({
    required this.item,
    required this.controller,
    required this.offboardingId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final submissionState =
        ref.watch(validateHandoverSubmissionProvider(item.id ?? 0));

    // Listen PER ITEM for success / error
    ref.listen(
      validateHandoverSubmissionProvider(item.id ?? 0),
      (_, next) {
        next.whenOrNull(
          data: (_) {
            showCustomToast(
              context,
              l10n.offboardingWorkValidated,
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
            ITextFieldTextArea(
              controller: controller,
              label: l10n.offboardingWork,
              isRequired: true,
              readOnly: true,
              enabled: false,
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
                isLoading
                    ? l10n.offboardingValidating
                    : l10n.offboardingValidateNow,
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
