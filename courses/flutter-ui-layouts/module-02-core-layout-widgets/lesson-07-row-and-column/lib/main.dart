import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(title: const Text('Row & Column'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Row — Horizontal', style: TextStyle(color: kAccent, fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _StatItem(Icons.book, '24', 'Lessons'),
          _StatItem(Icons.timer, '6h', 'Duration'),
          _StatItem(Icons.star, '4.8', 'Rating'),
        ]),
        const SizedBox(height: 32),
        const Text('Column — Vertical', style: TextStyle(color: kAccent, fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        _MenuItem(Icons.play_circle, 'Continue Learning'),
        _MenuItem(Icons.bookmark, 'Bookmarks'),
        _MenuItem(Icons.settings, 'Settings'),
      ])),
    ));
  }
}
class _StatItem extends StatelessWidget {
  final IconData icon; final String value; final String label;
  const _StatItem(this.icon, this.value, this.label);
  @override
  Widget build(BuildContext context) => Column(children: [
    Icon(icon, color: kAccent, size: 28), const SizedBox(height: 4),
    Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
    Text(label, style: const TextStyle(color: Colors.white54, fontSize: 12)),
  ]);
}
class _MenuItem extends StatelessWidget {
  final IconData icon; final String label;
  const _MenuItem(this.icon, this.label);
  @override
  Widget build(BuildContext context) => Container(
    margin: const EdgeInsets.only(bottom: 8), padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(10)),
    child: Row(children: [Icon(icon, color: kAccent), const SizedBox(width: 12), Text(label, style: const TextStyle(color: Colors.white))]),
  );
}
