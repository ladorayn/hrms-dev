import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class StatisticsItem extends ConsumerWidget {
  final String iconAsset;
  final String value;
  final String label;
  final String description;

  const StatisticsItem({
    super.key,
    required this.iconAsset,
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(iconAsset, width: 20),
              const SizedBox(width: 8),
              Text(value,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: Text(label,
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 12)),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(description,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
        ],
      ),
    );
  }
}
