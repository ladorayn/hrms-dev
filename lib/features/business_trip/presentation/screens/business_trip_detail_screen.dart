import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/business_trip/data/models/response/business_trip_response.dart';
import 'package:hrms_mobile/features/business_trip/presentation/providers/business_trip_provider.dart';
import 'package:hrms_mobile/features/business_trip/presentation/widgets/business_trip_status_chip.dart';
import 'package:intl/intl.dart';

class BusinessTripDetailScreen extends ConsumerWidget {
  final int id;

  const BusinessTripDetailScreen({super.key, required this.id});

  void _cancelTrip(BuildContext context, WidgetRef ref, AppLocalizations l10n) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.businessTripCancelConfirmTitle),
        content: Text(l10n.businessTripCancelConfirmBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.businessTripCancelNo),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.businessTripCancelYes),
          ),
        ],
      ),
    );

    if (confirm == true) {
      try {
        await ref
            .read(businessTripCancellationProvider.notifier)
            .cancelTrip(id: id);
        if (context.mounted) {
          showCustomToast(context, l10n.businessTripCancelSuccess, ToastType.success);
        }
        ref.invalidate(businessTripsProvider);
        if (context.mounted) {
          context.pop();
        }
      } catch (e) {
        if (context.mounted) {
          showCustomToast(context, l10n.businessTripCancelFailed, ToastType.error);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final detailAsync = ref.watch(businessTripDetailProvider(id: id));
    final cancelState = ref.watch(businessTripCancellationProvider);

    return Scaffold(
      appBar: IAppBar(title: l10n.businessTripDetailTitle),
      backgroundColor: Colors.white,
      body: detailAsync.when(
        data: (data) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context, data, l10n),
                const SizedBox(height: 24),
                _buildDetailRow(l10n.businessTripDestination, data.destination ?? '-'),
                _buildDetailRow(l10n.businessTripReason, data.reason ?? '-'),
                _buildDetailRow(l10n.businessTripNotes, data.notes ?? '-'),
                _buildApproverInfo(data.approver, l10n),
                const SizedBox(height: 32),
                if (data.status == 0) // Waiting
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: IColors.light.error.background,
                        foregroundColor: IColors.light.error.hover,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: IColors.light.error.hover),
                        ),
                      ),
                      onPressed: cancelState.isLoading ? null : () => _cancelTrip(context, ref, l10n),
                      child: cancelState.isLoading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : Text(l10n.businessTripCancelRequest),
                    ),
                  ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text("Error: $err")),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, BusinessTripData data, AppLocalizations l10n) {
    final textTheme = Theme.of(context).textTheme;

    final startDate = data.startDate != null ? DateTime.tryParse(data.startDate!) : null;
    final endDate = data.endDate != null ? DateTime.tryParse(data.endDate!) : null;

    final startFormatted = startDate != null ? DateFormat('MMM d').format(startDate) : '-';
    final endFormatted = endDate != null ? DateFormat('MMM d, yyyy').format(endDate) : '-';
    
    int durationInDays = 0;
    if (startDate != null && endDate != null) {
      durationInDays = endDate.difference(startDate).inDays + 1;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                data.destination ?? l10n.businessTripTitle,
                style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            BusinessTripStatusChip(
              status: data.status ?? 0,
              statusLabel: data.statusStr ?? 'Unknown',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.businessTripDuration, style: textTheme.bodySmall),
                  const SizedBox(height: 4),
                  Text("$startFormatted - $endFormatted", style: textTheme.bodyMedium),
                ],
              ),
              Text(
                l10n.businessTripDays(durationInDays),
                style: textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 12.sp,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildApproverInfo(BusinessTripApprover? approver, AppLocalizations l10n) {
    if (approver == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.blue.shade100),
        ),
        child: Row(
          children: [
            const Icon(Icons.person_outline, color: Colors.blue),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.businessTripApprover, style: const TextStyle(color: Colors.blue, fontSize: 12)),
                  Text(
                    approver.name ?? '-',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
