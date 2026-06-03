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
      appBar: AppBar(title: const Text('Reusable Components'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(children: [
        Row(children: [
          Expanded(child: StatCard(icon: Icons.school, value: '3', label: 'Courses', color: kAccent)),
          const SizedBox(width: 12),
          Expanded(child: StatCard(icon: Icons.check_circle, value: '42', label: 'Completed', color: kGreen)),
        ]),
        const SizedBox(height: 12),
        Row(children: [
          Expanded(child: StatCard(icon: Icons.timer, value: '18h', label: 'Study Time', color: Colors.orange)),
          const SizedBox(width: 12),
          Expanded(child: StatCard(icon: Icons.star, value: '7', label: 'Streak Days', color: Colors.purple)),
        ]),
      ])),
    ));
  }
}
class StatCard extends StatelessWidget {
  final IconData icon; final String value; final String label; final Color color;
  const StatCard({super.key, required this.icon, required this.value, required this.label, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.all(20), decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(height: 12),
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white54, fontSize: 13)),
      ]),
    );
  }
}
