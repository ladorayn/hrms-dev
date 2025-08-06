import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/network/alice_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:hrms_mobile/core/config/app_config.dart';

class AliceFab extends ConsumerWidget {
  const AliceFab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!kDebugMode || !AppConfig.USE_ALICE || !Platform.isIOS) {
      return const SizedBox.shrink();
    }

    return Positioned(
      bottom: 24,
      right: 16,
      child: FloatingActionButton(
        heroTag: 'alice_inspector',
        onPressed: () => ref.read(aliceProvider).showInspector(),
        child: const Icon(Icons.bug_report),
      ),
    );
  }
}
