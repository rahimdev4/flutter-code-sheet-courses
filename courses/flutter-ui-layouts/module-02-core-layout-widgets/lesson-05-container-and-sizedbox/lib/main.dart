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
      appBar: AppBar(title: const Text('Container & SizedBox'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(width: 150, height: 150, decoration: BoxDecoration(color: kAccent, borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: kAccent.withValues(alpha: 0.3), blurRadius: 20)]),
          child: const Center(child: Text('Container', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)))),
        const SizedBox(height: 24),
        const SizedBox(width: 150, height: 50, child: DecoratedBox(decoration: BoxDecoration(color: kCard), child: Center(child: Text('SizedBox', style: TextStyle(color: Colors.white))))),
      ])),
    ));
  }
}
