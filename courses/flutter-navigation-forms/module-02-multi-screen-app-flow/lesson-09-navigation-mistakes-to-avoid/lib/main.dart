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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clean Nav')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          // Good Practice: Extract complex navigation out of the build method
          onPressed: () => _navigateToNext(context),
          child: const Text('Go Forward'),
        ),
      ),
    );
  }

  void _navigateToNext(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const NextScreen()));
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next')),
      body: const Center(child: Text('Clean separation of concerns', style: TextStyle(color: Colors.white, fontSize: 18))),
    );
  }
}
