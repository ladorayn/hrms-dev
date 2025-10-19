import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsItem extends ConsumerWidget {
  final String value;
  final String label;
  final String description;

  const StatisticsItem({
    super.key,
    required this.value,
    required this.label,
    required this.description,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(value,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(width: 4.sp),
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: Text(label,
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: 12.sp)),
              ),
            ],
          ),
          SizedBox(height: 4.sp),
          Text(description,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12.sp)),
        ],
      ),
    );
  }
}
