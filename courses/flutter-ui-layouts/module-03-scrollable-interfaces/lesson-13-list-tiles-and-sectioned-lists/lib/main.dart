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
      appBar: AppBar(title: const Text('Sectioned Lists'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        _Header('Module 1 — Getting Started'),
        _Item('What is Dart?', true), _Item('DartPad Setup', true), _Item('First Program', false),
        const SizedBox(height: 16),
        _Header('Module 2 — Variables'),
        _Item('Variables and Values', false), _Item('Final and Const', false), _Item('Operators', false),
      ]),
    ));
  }
}
class _Header extends StatelessWidget {
  final String title;
  const _Header(this.title);
  @override
  Widget build(BuildContext context) => Padding(padding: const EdgeInsets.only(bottom: 8, top: 8), child: Text(title, style: const TextStyle(color: kAccent, fontSize: 14, fontWeight: FontWeight.bold)));
}
class _Item extends StatelessWidget {
  final String title; final bool done;
  const _Item(this.title, this.done);
  @override
  Widget build(BuildContext context) => Container(
    margin: const EdgeInsets.only(bottom: 6), decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(10)),
    child: ListTile(
      leading: Icon(done ? Icons.check_circle : Icons.circle_outlined, color: done ? const Color(0xFF00C896) : Colors.white24),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: const Icon(Icons.chevron_right, color: Colors.white24),
    ),
  );
}
