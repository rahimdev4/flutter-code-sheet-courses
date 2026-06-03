import 'package:flutter/material.dart';

/// Mini Project — Course Lessons List UI
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(colorSchemeSeed: Colors.deepPurple, useMaterial3: true), home: const LessonListScreen());
  }
}

class LessonListScreen extends StatelessWidget {
  const LessonListScreen({super.key});

  static const lessons = [
    {'title': 'What is Flutter?', 'done': true},
    {'title': 'How Flutter Works', 'done': true},
    {'title': 'Project Structure', 'done': true},
    {'title': 'Running Your First App', 'done': false},
    {'title': 'What are Widgets?', 'done': false},
    {'title': 'StatelessWidget', 'done': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Basics')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: lessons.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          final done = lesson['done'] as bool;
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: done ? Colors.green : Colors.grey[300],
              child: done ? const Icon(Icons.check, color: Colors.white) : Text('${index + 1}', style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            title: Text(lesson['title'] as String),
            subtitle: Text(done ? 'Completed' : 'Not started'),
            trailing: const Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}
