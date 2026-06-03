import 'package:flutter/material.dart';

/// Lesson 02 — StatelessWidget
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('StatelessWidget'), backgroundColor: Colors.purple, foregroundColor: Colors.white),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InfoCard(title: 'Stateless', description: 'Does not change after being built.', icon: Icons.lock),
            InfoCard(title: 'Immutable', description: 'Same input → same output, always.', icon: Icons.check_circle),
            InfoCard(title: 'Simple', description: 'Perfect for static content.', icon: Icons.star),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  const InfoCard({super.key, required this.title, required this.description, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(leading: Icon(icon, color: Colors.purple), title: Text(title), subtitle: Text(description)),
    );
  }
}
