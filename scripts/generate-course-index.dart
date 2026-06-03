/// Generate Course Index
///
/// Scans the courses/ directory and generates a JSON index
/// of all courses, modules, and lessons.
///
/// Usage: dart run scripts/generate-course-index.dart

import 'dart:convert';
import 'dart:io';

void main() {
  final coursesDir = Directory('courses');

  if (!coursesDir.existsSync()) {
    print('❌ Error: courses/ directory not found.');
    print('   Run this script from the repository root.');
    exit(1);
  }

  final index = <Map<String, dynamic>>[];

  for (var courseDir in coursesDir.listSync().whereType<Directory>()) {
    final courseName = courseDir.path.split('/').last;
    final courseInfoFile = File('${courseDir.path}/course-info.json');

    Map<String, dynamic> courseInfo = {};
    if (courseInfoFile.existsSync()) {
      courseInfo = jsonDecode(courseInfoFile.readAsStringSync());
    }

    final modules = <Map<String, dynamic>>[];

    for (var moduleDir in courseDir.listSync().whereType<Directory>()) {
      final moduleName = moduleDir.path.split('/').last;
      if (!moduleName.startsWith('module-')) continue;

      final lessons = <String>[];
      for (var lessonDir in moduleDir.listSync().whereType<Directory>()) {
        final lessonName = lessonDir.path.split('/').last;
        if (lessonName.startsWith('lesson-')) {
          lessons.add(lessonName);
        }
      }
      lessons.sort();

      modules.add({
        'name': moduleName,
        'lessons': lessons,
      });
    }
    modules.sort((a, b) => a['name'].compareTo(b['name']));

    index.add({
      'course': courseName,
      'info': courseInfo,
      'modules': modules,
    });
  }

  final output = const JsonEncoder.withIndent('  ').convert(index);
  final outputFile = File('course-index.json');
  outputFile.writeAsStringSync(output);

  print('✅ Generated course-index.json');
  print('   Found ${index.length} course(s).');
}
