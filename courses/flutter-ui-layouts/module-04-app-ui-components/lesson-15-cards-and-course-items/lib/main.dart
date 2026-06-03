import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(title: const Text('Course Cards'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: ListView(padding: const EdgeInsets.all(16), children: const [
        _CourseCard(title: 'Dart Fundamentals', lessons: 21, progress: 0.85, color: kAccent),
        SizedBox(height: 12),
        _CourseCard(title: 'Flutter Basics', lessons: 22, progress: 0.45, color: kGreen),
        SizedBox(height: 12),
        _CourseCard(title: 'Flutter UI & Layouts', lessons: 24, progress: 0.1, color: Colors.orange),
      ]),
    ));
  }
}
class _CourseCard extends StatelessWidget {
  final String title; final int lessons; final double progress; final Color color;
  const _CourseCard({required this.title, required this.lessons, required this.progress, required this.color});
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(16)),
    child: Row(children: [
      Container(width: 56, height: 56, decoration: BoxDecoration(color: color.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(12)),
        child: Icon(Icons.book, color: color)),
      const SizedBox(width: 16),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 4),
        Text('$lessons lessons · ${(progress * 100).toInt()}%', style: const TextStyle(color: Colors.white54, fontSize: 13)),
        const SizedBox(height: 8),
        ClipRRect(borderRadius: BorderRadius.circular(4), child: LinearProgressIndicator(value: progress, backgroundColor: Colors.white12, color: color, minHeight: 5)),
      ])),
    ]),
  );
}
