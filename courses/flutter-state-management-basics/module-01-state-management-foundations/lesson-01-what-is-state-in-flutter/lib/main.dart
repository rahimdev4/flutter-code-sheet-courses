import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // This variable 'userName' is our simple 'state'
    const String userName = 'Flutter Developer';
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('State Basics')),
        body: const Center(
          child: Text('Hello, $userName!', style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
      ),
    );
  }
}
