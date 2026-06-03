import 'package:flutter/material.dart';

/// Lesson 04 — Padding, Margin, and Spacing
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Padding & Margin'), backgroundColor: Colors.cyan, foregroundColor: Colors.white),
        body: Column(
          children: [
            const SizedBox(height: 16), // SizedBox for spacing
            const Padding(padding: EdgeInsets.all(16), child: Text('Padding: space INSIDE', style: TextStyle(fontSize: 16))),
            Container(margin: const EdgeInsets.all(16), padding: const EdgeInsets.all(16), color: Colors.cyan[100], child: const Text('Margin: space OUTSIDE')),
            const SizedBox(height: 32), // More spacing
            Container(margin: const EdgeInsets.symmetric(horizontal: 32), padding: const EdgeInsets.all(20), decoration: BoxDecoration(color: Colors.cyan[50], borderRadius: BorderRadius.circular(12)), child: const Text('Combined spacing')),
          ],
        ),
      ),
    );
  }
}
