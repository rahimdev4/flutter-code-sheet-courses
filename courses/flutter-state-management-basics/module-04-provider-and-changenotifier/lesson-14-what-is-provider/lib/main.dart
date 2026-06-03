import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

void main() {
  runApp(
    // 1. Provide the data
    Provider<String>(
      create: (_) => 'Hello from Provider!',
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const ChildWidget(),
    );
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key});
  @override
  Widget build(BuildContext context) {
    // 2. Read the data
    final message = Provider.of<String>(context);
    
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Basics')),
      body: Center(
        child: Text(message, style: const TextStyle(color: Colors.white, fontSize: 24)),
      ),
    );
  }
}
