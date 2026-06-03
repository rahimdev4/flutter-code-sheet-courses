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
      appBar: AppBar(title: const Text('SingleChildScrollView'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(children: List.generate(15, (i) => Container(
          margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)),
          child: Row(children: [
            Icon(Icons.check_circle, color: kAccent),
            const SizedBox(width: 12),
            Text('Setting item ${i + 1}', style: const TextStyle(color: Colors.white, fontSize: 16)),
          ]),
        ))),
      ),
    ));
  }
}
