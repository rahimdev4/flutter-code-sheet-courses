import 'package:flutter/material.dart';

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
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const TogglesDemo(),
    );
  }
}

class TogglesDemo extends StatefulWidget {
  const TogglesDemo({super.key});
  @override
  State<TogglesDemo> createState() => _TogglesDemoState();
}

class _TogglesDemoState extends State<TogglesDemo> {
  String? _selected;
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toggles')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DropdownButtonFormField<String>(
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
          const SizedBox(height: 16),
          CheckboxListTile(
            title: const Text('Accept terms', style: TextStyle(color: Colors.white)),
            value: _check,
            activeColor: kAccent,
            onChanged: (v) => setState(() => _check = v!),
          ),
        ],
      ),
    );
  }
}
