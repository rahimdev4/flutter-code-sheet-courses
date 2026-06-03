import 'dart:convert';
import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final map = {'name': 'Ali', 'score': 95};
    final jsonString = jsonEncode(map);
    final decoded = jsonDecode(jsonString);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('JSON Basics')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Encoded: $jsonString', style: const TextStyle(color: kAccent, fontSize: 16)),
            const SizedBox(height: 20),
            Text('Decoded name: ${decoded['name']}', style: const TextStyle(color: Colors.white, fontSize: 20)),
          ]),
        ),
      ),
    );
  }
}
