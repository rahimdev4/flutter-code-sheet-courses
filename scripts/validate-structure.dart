/// Validate Structure
///
/// Checks that every course, module, and lesson folder
/// follows the required structure and naming conventions.
///
/// Usage: dart run scripts/validate-structure.dart

import 'dart:io';

int _errors = 0;
int _warnings = 0;

void main() {
  final coursesDir = Directory('courses');

  if (!coursesDir.existsSync()) {
    print('❌ Error: courses/ directory not found.');
    print('   Run this script from the repository root.');
    exit(1);
  }

  print('🔍 Validating repository structure...');
  print('');

  for (var courseDir in coursesDir.listSync().whereType<Directory>()) {
    validateCourse(courseDir);
  }

  print('');
  print('────────────────────────────');
  if (_errors == 0 && _warnings == 0) {
    print('✅ All checks passed!');
  } else {
    print('📊 Results: $_errors error(s), $_warnings warning(s)');
  }
}

void validateCourse(Directory courseDir) {
  final name = courseDir.path.split('/').last;
  print('📁 Course: $name');

  // Check README
  checkFileExists(courseDir, 'README.md');

  // Check course-info.json
  checkFileExists(courseDir, 'course-info.json');

  // Check modules
  for (var moduleDir in courseDir.listSync().whereType<Directory>()) {
    final moduleName = moduleDir.path.split('/').last;
    if (!moduleName.startsWith('module-')) continue;

    print('  📦 $moduleName');
    checkFileExists(moduleDir, 'README.md');

    // Check lessons
    for (var lessonDir in moduleDir.listSync().whereType<Directory>()) {
      final lessonName = lessonDir.path.split('/').last;
      if (!lessonName.startsWith('lesson-')) continue;

      print('    📄 $lessonName');
      checkFileExists(lessonDir, 'README.md');

      // Check for code file
      final hasDartFile = File('${lessonDir.path}/main.dart').existsSync();
      final hasLibDartFile =
          File('${lessonDir.path}/lib/main.dart').existsSync();

      if (!hasDartFile && !hasLibDartFile) {
        error('$lessonName: Missing main.dart or lib/main.dart');
      }
    }
  }
}

void checkFileExists(Directory dir, String filename) {
  final file = File('${dir.path}/$filename');
  if (!file.existsSync()) {
    error('Missing ${dir.path}/$filename');
  }
}

void error(String message) {
  print('      ❌ $message');
  _errors++;
}

void warn(String message) {
  print('      ⚠️  $message');
  _warnings++;
}
