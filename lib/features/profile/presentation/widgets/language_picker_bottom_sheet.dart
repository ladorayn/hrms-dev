import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/l10n/locale_provider.dart';

Future<void> showLanguagePickerBottomSheet(
  BuildContext context,
  WidgetRef ref,
) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (context) => const LanguagePickerBottomSheet(),
  );
}

class LanguagePickerBottomSheet extends ConsumerWidget {
  const LanguagePickerBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final localeAsync = ref.watch(localeProvider);
    final current = localeAsync.value ?? const ui.Locale('en');

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                l10n.profileChangeLanguage,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            RadioListTile<ui.Locale>(
              title: Text(l10n.languageEnglish),
              value: const ui.Locale('en'),
              groupValue: current,
              onChanged: (locale) => _selectLocale(context, ref, locale),
            ),
            RadioListTile<ui.Locale>(
              title: Text(l10n.languageIndonesian),
              value: const ui.Locale('id'),
              groupValue: current,
              onChanged: (locale) => _selectLocale(context, ref, locale),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectLocale(
    BuildContext context,
    WidgetRef ref,
    ui.Locale? locale,
  ) async {
    if (locale == null) {
      return;
    }

    await ref.read(localeProvider.notifier).setLocale(locale);
    if (context.mounted) {
      Navigator.of(context).pop();
    }
  }
}
