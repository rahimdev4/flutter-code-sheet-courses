import 'package:flutter/material.dart';

/// Lesson 02 — Row and Column
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Row & Column'), backgroundColor: Colors.teal, foregroundColor: Colors.white),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Column (Vertical)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _ColorBox(Colors.red, 'Red'),
                  _ColorBox(Colors.green, 'Green'),
                  _ColorBox(Colors.blue, 'Blue'),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Row (Horizontal)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorBox extends StatelessWidget {
  final Color color;
  final String label;
  const _ColorBox(this.color, this.label);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(width: 80, height: 80, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8))),
      const SizedBox(height: 4),
      Text(label),
    ]);
  }
}
