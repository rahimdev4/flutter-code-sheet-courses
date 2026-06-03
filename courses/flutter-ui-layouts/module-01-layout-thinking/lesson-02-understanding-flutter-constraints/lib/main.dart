import 'package:flutter/material.dart';

/// Lesson 02 — Understanding Flutter Constraints
/// Constraints go down, sizes go up, parent sets position.

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBg,
        appBar: AppBar(title: const Text('Constraints'), backgroundColor: kCard, foregroundColor: Colors.white),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Tight Constraint', style: TextStyle(color: kAccent, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // Tight: exact size given
              Container(width: 200, height: 60, decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(8)),
                child: const Center(child: Text('200 × 60', style: TextStyle(color: Colors.white)))),
              const SizedBox(height: 24),
              const Text('Loose Constraint', style: TextStyle(color: kAccent, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // Loose: child picks its size
              Container(decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.all(16),
                child: const Text('I size myself to fit content', style: TextStyle(color: Colors.white))),
              const SizedBox(height: 24),
              const Text('Expanded fills remaining space', style: TextStyle(color: kAccent, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Expanded(
                child: Container(decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(8)),
                  child: const Center(child: Text('I fill all remaining space', style: TextStyle(color: Colors.white)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
