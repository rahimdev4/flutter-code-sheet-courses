import 'package:flutter/material.dart';

/// Lesson 03 — Stack
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack'), backgroundColor: Colors.deepOrange, foregroundColor: Colors.white),
        body: Center(
          child: SizedBox(
            width: 250, height: 250,
            child: Stack(
              children: [
                Container(decoration: BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.circular(16))),
                Positioned(top: 20, left: 20, child: Container(width: 100, height: 100, color: Colors.red)),
                Positioned(bottom: 20, right: 20, child: Container(width: 100, height: 100, color: Colors.green)),
                const Center(child: Text('Stack!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
