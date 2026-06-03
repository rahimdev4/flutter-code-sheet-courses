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
      appBar: AppBar(title: const Text('Stack & Positioned'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // Avatar with badge
        Stack(children: [
          const CircleAvatar(radius: 50, backgroundColor: kAccent, child: Text('FL', style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold))),
          Positioned(bottom: 2, right: 2, child: Container(width: 24, height: 24, decoration: BoxDecoration(color: kGreen, shape: BoxShape.circle, border: Border.all(color: kBg, width: 3)))),
        ]),
        const SizedBox(height: 32),
        // Overlapping cards
        SizedBox(width: 250, height: 180, child: Stack(children: [
          Positioned(top: 0, left: 0, right: 0, child: Container(height: 120, decoration: BoxDecoration(color: kAccent, borderRadius: BorderRadius.circular(16)))),
          Positioned(bottom: 0, left: 20, right: 20, child: Container(height: 80, padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12), boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 8)]),
            child: const Center(child: Text('Overlapping Card', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))))),
        ])),
      ])),
    ));
  }
}
