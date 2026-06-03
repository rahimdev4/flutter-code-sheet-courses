import 'package:flutter/material.dart';

/// Lesson 24 — Final Project: Learning Dashboard UI
/// Combines everything from the Flutter UI & Layouts course.

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

void main() => runApp(const DashboardApp());

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: kBg),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Header
            Row(children: [
              const CircleAvatar(radius: 24, backgroundColor: kAccent, child: Text('FL', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16))),
              const SizedBox(width: 12),
              const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Hello, Learner 👋', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Continue your journey', style: TextStyle(color: Colors.white54, fontSize: 14)),
              ])),
              IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined, color: Colors.white)),
            ]),
            const SizedBox(height: 24),

            // Stats row
            Row(children: [
              Expanded(child: _StatCard(icon: Icons.school, value: '3', label: 'Courses', color: kAccent)),
              const SizedBox(width: 12),
              Expanded(child: _StatCard(icon: Icons.check_circle, value: '42', label: 'Done', color: kGreen)),
              const SizedBox(width: 12),
              Expanded(child: _StatCard(icon: Icons.timer, value: '18h', label: 'Time', color: Colors.orange)),
            ]),
            const SizedBox(height: 28),

            // Continue learning
            const Text('Continue Learning', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _CourseProgress(title: 'Dart Fundamentals', lessons: '18/21', progress: 0.85, color: kAccent),
            const SizedBox(height: 10),
            _CourseProgress(title: 'Flutter Basics', lessons: '10/22', progress: 0.45, color: kGreen),
            const SizedBox(height: 10),
            _CourseProgress(title: 'Flutter UI & Layouts', lessons: '2/24', progress: 0.08, color: Colors.orange),
            const SizedBox(height: 28),

            // Explore courses
            const Text('Explore Courses', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            SizedBox(
              height: 150,
              child: ListView(scrollDirection: Axis.horizontal, children: const [
                _ExploreCourseCard(emoji: '🎯', title: 'Dart\nFundamentals', color: kAccent),
                SizedBox(width: 12),
                _ExploreCourseCard(emoji: '📱', title: 'Flutter\nBasics', color: kGreen),
                SizedBox(width: 12),
                _ExploreCourseCard(emoji: '🎨', title: 'UI &\nLayouts', color: Colors.orange),
                SizedBox(width: 12),
                _ExploreCourseCard(emoji: '🔌', title: 'State &\nAPI', color: Colors.purple),
              ]),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: kCard,
        selectedItemColor: kAccent,
        unselectedItemColor: Colors.white38,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;
  const _StatCard({required this.icon, required this.value, required this.label, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(14)),
      child: Column(children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 8),
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(color: Colors.white54, fontSize: 12)),
      ]),
    );
  }
}

class _CourseProgress extends StatelessWidget {
  final String title;
  final String lessons;
  final double progress;
  final Color color;
  const _CourseProgress({required this.title, required this.lessons, required this.progress, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)),
      child: Row(children: [
        Container(width: 44, height: 44, decoration: BoxDecoration(color: color.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.book, color: color, size: 22)),
        const SizedBox(width: 12),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          ClipRRect(borderRadius: BorderRadius.circular(3), child: LinearProgressIndicator(value: progress, backgroundColor: Colors.white12, color: color, minHeight: 4)),
        ])),
        const SizedBox(width: 12),
        Text(lessons, style: const TextStyle(color: Colors.white54, fontSize: 12)),
      ]),
    );
  }
}

class _ExploreCourseCard extends StatelessWidget {
  final String emoji;
  final String title;
  final Color color;
  const _ExploreCourseCard({required this.emoji, required this.title, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130, padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(16), border: Border.all(color: color.withValues(alpha: 0.3))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(emoji, style: const TextStyle(fontSize: 32)),
        Text(title, style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 14)),
      ]),
    );
  }
}
