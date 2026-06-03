import 'package:flutter/material.dart';

/// Lesson 04 — Building a Clean Widget Tree
/// Extract widgets to keep your code readable.

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

// Clean: Each section is its own widget
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(title: const Text('Clean Widget Tree'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SectionHeader(title: 'My Courses'),
            SizedBox(height: 12),
            _CourseCard(title: 'Dart Fundamentals', lessons: 21, progress: 0.7),
            SizedBox(height: 12),
            _CourseCard(title: 'Flutter Basics', lessons: 22, progress: 0.3),
            SizedBox(height: 12),
            _CourseCard(title: 'Flutter UI & Layouts', lessons: 24, progress: 0.0),
          ],
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold));
  }
}

class _CourseCard extends StatelessWidget {
  final String title;
  final int lessons;
  final double progress;
  const _CourseCard({required this.title, required this.lessons, required this.progress});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text('$lessons lessons', style: const TextStyle(color: Colors.white54)),
        const SizedBox(height: 12),
        LinearProgressIndicator(value: progress, backgroundColor: Colors.white12, color: kGreen, minHeight: 6),
      ]),
    );
  }
}
