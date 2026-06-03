import 'package:flutter/material.dart';

/// Lesson 03 — Spacing, Alignment, and Visual Balance

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
        appBar: AppBar(title: const Text('Spacing & Alignment'), backgroundColor: kCard, foregroundColor: Colors.white),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Consistent Spacing', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              // Evenly spaced items
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _SpaceBox('16px', kAccent),
                  _SpaceBox('16px', kGreen),
                  _SpaceBox('16px', Colors.orange),
                ],
              ),
              const SizedBox(height: 24),
              const Text('Alignment Options', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Container(
                height: 120, width: double.infinity,
                decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16), child: Text('Left aligned', style: TextStyle(color: Colors.white70)))),
                    Center(child: Text('Center aligned', style: TextStyle(color: kAccent, fontWeight: FontWeight.bold))),
                    Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 16), child: Text('Right aligned', style: TextStyle(color: Colors.white70)))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SpaceBox extends StatelessWidget {
  final String label;
  final Color color;
  const _SpaceBox(this.label, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, height: 80,
      decoration: BoxDecoration(color: color.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(8), border: Border.all(color: color)),
      child: Center(child: Text(label, style: TextStyle(color: color, fontWeight: FontWeight.bold))),
    );
  }
}
