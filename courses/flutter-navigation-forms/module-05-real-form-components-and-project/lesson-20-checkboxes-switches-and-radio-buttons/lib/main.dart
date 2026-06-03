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
  bool _check = false;
  bool _switch = false;
  int _radio = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toggles')),
      body: ListView(
        children: [
          CheckboxListTile(
            title: const Text('Checkbox', style: TextStyle(color: Colors.white)),
            value: _check,
            activeColor: kAccent,
            onChanged: (v) => setState(() => _check = v!),
          ),
          SwitchListTile(
            title: const Text('Switch', style: TextStyle(color: Colors.white)),
            value: _switch,
            activeColor: kAccent,
            onChanged: (v) => setState(() => _switch = v),
          ),
          RadioListTile(
            title: const Text('Option 1', style: TextStyle(color: Colors.white)),
            value: 1,
            groupValue: _radio,
            activeColor: kAccent,
            onChanged: (v) => setState(() => _radio = v as int),
          ),
          RadioListTile(
            title: const Text('Option 2', style: TextStyle(color: Colors.white)),
            value: 2,
            groupValue: _radio,
            activeColor: kAccent,
            onChanged: (v) => setState(() => _radio = v as int),
          ),
        ],
      ),
    );
  }
}
