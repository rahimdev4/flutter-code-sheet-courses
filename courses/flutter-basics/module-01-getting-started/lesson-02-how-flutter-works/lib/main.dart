import 'package:flutter/material.dart';

/// Lesson 02 — How Flutter Works
///
/// Flutter draws every pixel using its own rendering engine.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('How Flutter Works'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: const Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('🎨 Flutter\'s Rendering', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text('1. You write Dart code using Widgets.', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Text('2. Flutter builds a Widget Tree.', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Text('3. The engine paints pixels on screen.', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Text('4. Hot Reload updates instantly! 🔥', style: TextStyle(fontSize: 16)),
              SizedBox(height: 24),
              Text('Try changing this text and press hot reload!', style: TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
