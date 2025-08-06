import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/features/attendance/presentation/providers/attendance_provider.dart';

class AttendanceScreen extends ConsumerWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historyState = ref.watch(attendanceHistoryProvider);
    final clockInState = ref.watch(clockInProvider);
    final clockOutState = ref.watch(clockOutProvider);

    bool isLoading = clockInState.isLoading || clockOutState.isLoading;

    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () async {
                        await ref.read(clockInProvider.notifier).submit();
                        await ref
                            .read(attendanceHistoryProvider.notifier)
                            .refresh();
                        _showSnack(context, ref.read(clockInProvider));
                      },
                child: const Text("Clock In"),
              ),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () async {
                        await ref.read(clockOutProvider.notifier).submit();
                        await ref
                            .read(attendanceHistoryProvider.notifier)
                            .refresh();
                        _showSnack(context, ref.read(clockOutProvider));
                      },
                child: const Text("Clock Out"),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
            child: historyState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text("Error: $e")),
              data: (records) {
                if (records.isEmpty) {
                  return const Center(child: Text("No attendance yet."));
                }
                return ListView.builder(
                  itemCount: records.length,
                  itemBuilder: (context, index) {
                    final item = records[index];
                    return ListTile(
                      leading: Text('${index + 1}'),
                      title: Text("Clock In: ${item.clockIn}"),
                      subtitle: Text("Clock Out: ${item.clockOut ?? '-'}"),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showSnack(BuildContext context, AsyncValue<void> value) {
    if (value.hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed: ${value.error}")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Success!")),
      );
    }
  }
}
