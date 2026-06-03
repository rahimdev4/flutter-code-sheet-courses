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
      home: const MistakeDemo(),
    );
  }
}

class MistakeDemo extends StatefulWidget {
  const MistakeDemo({super.key});
  @override
  State<MistakeDemo> createState() => _MistakeDemoState();
}

class _MistakeDemoState extends State<MistakeDemo> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Mistakes')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Value: $_counter', style: const TextStyle(color: Colors.white, fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kCard, foregroundColor: Colors.white),
              onPressed: () {
                // MISTAKE: Mutating data without setState
                // The UI will NOT update
                _counter++;
                print('Counter is now $_counter');
              },
              child: const Text('Broken Update'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
              onPressed: () {
                // FIX: Use setState
                setState(() => _counter++);
              },
              child: const Text('Fixed Update'),
            )
          ],
        ),
      ),
    );
  }
}
