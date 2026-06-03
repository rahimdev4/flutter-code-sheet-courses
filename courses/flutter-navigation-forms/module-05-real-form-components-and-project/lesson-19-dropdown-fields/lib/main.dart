import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const DropdownDemo(),
    );
  }
}

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({super.key});
  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dropdown')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: DropdownButtonFormField<String>(
          value: _selected,
          dropdownColor: kCard,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(filled: true, fillColor: kCard),
          hint: const Text('Select a course', style: TextStyle(color: Colors.white54)),
          items: ['Flutter', 'Dart', 'Firebase'].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (v) => setState(() => _selected = v),
        ),
      ),
    );
  }
}
