import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('❌ Please provide a feature name.\n');
    print('👉 Example: dart run generate_features.dart attendance');
    exit(1);
  }

  final featureName = args.first;
  final basePath = 'lib/features/$featureName';

  final structure = {
    '$basePath/data': [
      'data_sources',
      'models',
      'repositories',
    ],
    '$basePath/domain': [
      'entities',
      'repositories',
      'usecases',
    ],
    '$basePath/presentation': [
      'providers',
      'screens',
      'widgets',
    ],
  };

  for (var entry in structure.entries) {
    final baseDir = Directory(entry.key);
    if (!baseDir.existsSync()) {
      baseDir.createSync(recursive: true);
      print('📁 Created ${baseDir.path}');
    }

    for (var sub in entry.value) {
      final dir = Directory('${entry.key}/$sub');
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
        print('  📂 Created ${dir.path}');
      }
    }
  }
  print('\n✅ Feature "$featureName" generated successfully!');
}
