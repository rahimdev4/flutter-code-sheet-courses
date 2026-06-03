/// Lesson 18 — Final Practice
///
/// A comprehensive exercise combining all Dart fundamentals.

void main() async {
  // Create students
  var classroom = Classroom('Dart 101');

  classroom.addStudent(Student('Alice', [90, 85, 92]));
  classroom.addStudent(Student('Bob', [78, 82, 88]));
  classroom.addStudent(Student('Charlie', [95, 91, 97]));

  // Display report
  classroom.printReport();

  // Async — simulate saving
  print('');
  print('⏳ Saving results...');
  await classroom.saveResults();
  print('✅ Results saved!');
}

/// Represents a student with grades.
class Student {
  final String name;
  final List<int> grades;

  Student(this.name, this.grades);

  /// Calculates the average grade.
  double get average {
    if (grades.isEmpty) return 0;
    int sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }

  /// Returns a letter grade.
  String get letterGrade {
    double avg = average;
    if (avg >= 90) return 'A';
    if (avg >= 80) return 'B';
    if (avg >= 70) return 'C';
    return 'D';
  }
}

/// Represents a classroom with students.
class Classroom {
  final String name;
  final List<Student> _students = [];

  Classroom(this.name);

  void addStudent(Student student) {
    _students.add(student);
  }

  void printReport() {
    print('📋 $name — Class Report');
    print('─────────────────────────');

    for (var student in _students) {
      print('  ${student.name}: '
          'Avg ${student.average.toStringAsFixed(1)} '
          '(${student.letterGrade})');
    }

    print('');
    print('  📊 Class Average: '
        '${classAverage.toStringAsFixed(1)}');
  }

  double get classAverage {
    if (_students.isEmpty) return 0;
    double total = _students.fold(0, (sum, s) => sum + s.average);
    return total / _students.length;
  }

  /// Simulates saving results to a database.
  Future<void> saveResults() async {
    await Future.delayed(Duration(seconds: 1));
  }
}
