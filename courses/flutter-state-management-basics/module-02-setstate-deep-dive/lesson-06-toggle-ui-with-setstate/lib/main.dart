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
      home: const ToggleScreen(),
    );
  }
}

class ToggleScreen extends StatefulWidget {
  const ToggleScreen({super.key});
  @override
  State<ToggleScreen> createState() => _ToggleScreenState();
}

class _ToggleScreenState extends State<ToggleScreen> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toggle UI')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isVisible)
              Container(
                width: 150, height: 150,
                color: kAccent,
                child: const Center(child: Text('Visible!', style: TextStyle(color: kBg, fontWeight: FontWeight.bold))),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kCard, foregroundColor: Colors.white),
              onPressed: () => setState(() => _isVisible = !_isVisible),
              child: Text(_isVisible ? 'Hide' : 'Show'),
            )
          ],
        ),
      ),
    );
  }
}
