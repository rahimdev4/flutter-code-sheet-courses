import 'package:flutter/material.dart';

/// Lesson 05 — MaterialApp and Scaffold
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaterialApp Demo',
      theme: ThemeData(colorSchemeSeed: Colors.deepPurple, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('MaterialApp & Scaffold')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('📱 MaterialApp', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text('Sets up theme, navigation, title', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 24),
              Text('🏗 Scaffold', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text('Provides AppBar, body, FAB, drawer', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      ),
    );
  }
}
