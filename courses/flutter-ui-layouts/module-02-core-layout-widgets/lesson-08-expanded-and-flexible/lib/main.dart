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
      appBar: AppBar(title: const Text('Expanded & Flexible'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Expanded (fills remaining)', style: TextStyle(color: kAccent, fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        SizedBox(height: 60, child: Row(children: [
          Container(width: 80, color: kGreen, child: const Center(child: Text('Fixed', style: TextStyle(color: Colors.white)))),
          Expanded(child: Container(color: kAccent, child: const Center(child: Text('Expanded', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))))),
        ])),
        const SizedBox(height: 24),
        const Text('Flexible with flex values', style: TextStyle(color: kAccent, fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        SizedBox(height: 60, child: Row(children: [
          Flexible(flex: 1, child: Container(margin: const EdgeInsets.only(right: 4), decoration: BoxDecoration(color: kAccent, borderRadius: BorderRadius.circular(8)), child: const Center(child: Text('1', style: TextStyle(color: Colors.white))))),
          Flexible(flex: 2, child: Container(margin: const EdgeInsets.symmetric(horizontal: 4), decoration: BoxDecoration(color: kGreen, borderRadius: BorderRadius.circular(8)), child: const Center(child: Text('2', style: TextStyle(color: Colors.white))))),
          Flexible(flex: 1, child: Container(margin: const EdgeInsets.only(left: 4), decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(8)), child: const Center(child: Text('1', style: TextStyle(color: Colors.white))))),
        ])),
      ])),
    ));
  }
}
