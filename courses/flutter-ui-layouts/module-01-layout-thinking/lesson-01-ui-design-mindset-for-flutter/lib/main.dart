import 'package:flutter/material.dart';

/// Lesson 01 — UI Design Mindset for Flutter
/// Everything is a widget. Break screens into small pieces.

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBg,
        appBar: AppBar(
          title: const Text('UI Design Mindset'),
          backgroundColor: kCard,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header widget
              const Text('Think in Widgets 🧩', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Every UI element is a widget.', style: TextStyle(color: Colors.white70, fontSize: 16)),
              const SizedBox(height: 24),
              // Card widget
              _ConceptCard(icon: Icons.widgets, title: 'Compose', desc: 'Combine small widgets into bigger ones'),
              const SizedBox(height: 12),
              _ConceptCard(icon: Icons.account_tree, title: 'Widget Tree', desc: 'Your UI is a tree of nested widgets'),
              const SizedBox(height: 12),
              _ConceptCard(icon: Icons.refresh, title: 'Rebuild', desc: 'Widgets rebuild when state changes'),
            ],
          ),
        ),
      ),
    );
  }
}

class _ConceptCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;
  const _ConceptCard({required this.icon, required this.title, required this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Icon(icon, color: kAccent, size: 32),
          const SizedBox(width: 16),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(desc, style: const TextStyle(color: Colors.white60, fontSize: 14)),
          ])),
        ],
      ),
    );
  }
}
