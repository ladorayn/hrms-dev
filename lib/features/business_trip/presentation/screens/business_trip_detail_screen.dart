import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
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

  void _cancelTrip(BuildContext context, WidgetRef ref) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Cancel Request"),
        content: const Text("Are you sure you want to cancel this request?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("No"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text("Yes"),
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
          showCustomToast(context, 'Request cancelled successfully', ToastType.success);
        }
        ref.invalidate(businessTripsProvider);
        if (context.mounted) {
          context.pop();
        }
      } catch (e) {
        if (context.mounted) {
          showCustomToast(context, 'Failed to cancel request', ToastType.error);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(businessTripDetailProvider(id: id));
    final cancelState = ref.watch(businessTripCancellationProvider);

    return Scaffold(
      appBar: IAppBar(title: "Business Trip Detail"),
      backgroundColor: Colors.white,
      body: detailAsync.when(
        data: (data) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context, data),
                const SizedBox(height: 24),
                _buildDetailRow("Destination", data.destination ?? '-'),
                _buildDetailRow("Reason", data.reason ?? '-'),
                _buildDetailRow("Notes", data.notes ?? '-'),
                _buildApproverInfo(data.approver),
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
                      onPressed: cancelState.isLoading ? null : () => _cancelTrip(context, ref),
                      child: cancelState.isLoading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text("Cancel Request"),
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

  Widget _buildHeader(BuildContext context, BusinessTripData data) {
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
                data.destination ?? 'Business Trip',
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
                  Text("Duration", style: textTheme.bodySmall),
                  const SizedBox(height: 4),
                  Text("$startFormatted - $endFormatted", style: textTheme.bodyMedium),
                ],
              ),
              Text(
                "($durationInDays Days)",
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

  Widget _buildApproverInfo(BusinessTripApprover? approver) {
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
                  const Text("Approver", style: TextStyle(color: Colors.blue, fontSize: 12)),
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
