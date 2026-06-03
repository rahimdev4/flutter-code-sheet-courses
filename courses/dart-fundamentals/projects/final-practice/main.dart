/// Dart Fundamentals — Final Practice
///
/// This program combines key concepts from the entire course.

void main() {
  // Variables & types
  String studentName = 'Flutter Learner';
  int lessonsCompleted = 18;
  double progress = 100.0;
  bool isGraduated = true;

  // Collections
  List<String> modules = [
    'Getting Started',
    'Variables, Types & Operators',
    'Control Flow',
    'Functions & Collections',
    'Object-Oriented Dart',
    'Modern Dart Essentials',
  ];

  Map<String, int> scores = {
    'Module 1': 95,
    'Module 2': 88,
    'Module 3': 92,
    'Module 4': 90,
    'Module 5': 85,
    'Module 6': 91,
  };

  // Control flow
  print('🎓 Course Completion Report');
  print('──────────────────────────');
  print('Student: $studentName');
  print('Lessons Completed: $lessonsCompleted');
  print('Progress: $progress%');
  print('');

  // Loop through modules
  print('📚 Modules:');
  for (int i = 0; i < modules.length; i++) {
    print('  ${i + 1}. ${modules[i]}');
  }

  // Functions
  print('');
  print('📊 Scores:');
  scores.forEach((module, score) {
    String grade = getGrade(score);
    print('  $module: $score ($grade)');
  });

  // Final message
  print('');
  if (isGraduated) {
    print('🎉 Congratulations! You have completed Dart Fundamentals!');
  }
}

/// Returns a letter grade based on the score.
String getGrade(int score) {
  if (score >= 90) return 'A';
  if (score >= 80) return 'B';
  if (score >= 70) return 'C';
  return 'D';
}
