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
      home: const LocalStateDemo(),
    );
  }
}

// This widget manages its own LOCAL state
class LocalStateDemo extends StatefulWidget {
  const LocalStateDemo({super.key});
  @override
  State<LocalStateDemo> createState() => _LocalStateDemoState();
}

class _LocalStateDemoState extends State<LocalStateDemo> {
  // Local state: only this widget cares about it
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Local State')),
      body: Center(
        child: SwitchListTile(
          title: const Text('Toggle local state', style: TextStyle(color: Colors.white)),
          value: _isOn,
          activeColor: kAccent,
          onChanged: (val) => setState(() => _isOn = val),
        ),
      ),
    );
  }
}
