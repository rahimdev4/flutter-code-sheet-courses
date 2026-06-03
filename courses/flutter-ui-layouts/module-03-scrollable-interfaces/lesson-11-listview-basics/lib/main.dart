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
    final lessons = ['What is Dart?', 'DartPad Setup', 'Variables', 'Functions', 'Classes', 'Null Safety', 'Async/Await', 'Lists', 'Maps', 'OOP'];
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(title: const Text('ListView.builder'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: ListView.builder(
        padding: const EdgeInsets.all(16), itemCount: lessons.length,
        itemBuilder: (context, i) => Container(
          margin: const EdgeInsets.only(bottom: 8), padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)),
          child: Row(children: [
            CircleAvatar(radius: 16, backgroundColor: i < 5 ? kGreen : kAccent.withValues(alpha: 0.2), child: i < 5 ? const Icon(Icons.check, size: 16, color: Colors.white) : Text('${i + 1}', style: const TextStyle(color: kAccent, fontSize: 12))),
            const SizedBox(width: 12),
            Text(lessons[i], style: const TextStyle(color: Colors.white, fontSize: 16)),
          ]),
        ),
      ),
    ));
  }
}
