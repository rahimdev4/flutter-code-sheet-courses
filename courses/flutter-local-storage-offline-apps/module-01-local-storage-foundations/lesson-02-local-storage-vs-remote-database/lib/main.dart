import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Local vs Remote')),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text('📱 Local Storage\n• Fast, no internet needed\n• Data stays on device\n• Good for settings, cache\n\n☁️ Remote Database\n• Shared across devices\n• Requires internet\n• Good for user accounts, social data', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
      ),
    );
  }
}
