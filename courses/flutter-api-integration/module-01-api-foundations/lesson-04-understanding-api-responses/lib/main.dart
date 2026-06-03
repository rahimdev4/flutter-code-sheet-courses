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
      home: Scaffold(
        appBar: AppBar(title: const Text('API Responses')),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            color: kCard,
            child: const Text(
              '{\n  "status": 200,\n  "data": "Hello World"\n}', 
              style: TextStyle(color: kAccent, fontSize: 24, fontFamily: 'monospace'),
            ),
          ),
        ),
      ),
    );
  }
}
