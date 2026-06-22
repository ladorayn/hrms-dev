import 'dart:convert';
import 'dart:io';

/// Merges split ARB partials into app_{locale}.arb before running gen-l10n.
///
/// Flutter gen-l10n allows only one ARB file per locale in [arbDir].
/// Keep domain splits under [partialsDir]; run this script, then `flutter gen-l10n`.
void main() {
  const arbDir = 'lib/application/l10n';
  const partialsDir = '$arbDir/partials';
  const locales = ['en', 'id'];

  for (final locale in locales) {
    final appPath = '$arbDir/app_$locale.arb';
    final appFile = File(appPath);
    if (!appFile.existsSync()) {
      stderr.writeln('Missing $appPath');
      exitCode = 1;
      return;
    }

    final merged = Map<String, dynamic>.from(
      jsonDecode(appFile.readAsStringSync()) as Map<String, dynamic>,
    );

    final partialsRoot = Directory(partialsDir);
    if (!partialsRoot.existsSync()) {
      continue;
    }

    for (final entity in partialsRoot.listSync()) {
      if (entity is! File || !entity.path.endsWith('_$locale.arb')) {
        continue;
      }

      final partial = jsonDecode(entity.readAsStringSync()) as Map<String, dynamic>;
      for (final entry in partial.entries) {
        if (entry.key.startsWith('@@')) {
          continue;
        }
        merged[entry.key] = entry.value;
        final metadataKey = '@${entry.key}';
        if (partial.containsKey(metadataKey)) {
          merged[metadataKey] = partial[metadataKey];
        }
      }
    }

    appFile.writeAsStringSync('${const JsonEncoder.withIndent('  ').convert(merged)}\n');
    stdout.writeln('Merged partials into $appPath');
  }
}
