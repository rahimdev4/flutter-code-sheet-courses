import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF050F19),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0B1A2A), foregroundColor: Colors.white),
        cardColor: const Color(0xFF0B1A2A),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.white70),
          bodyMedium: TextStyle(color: Colors.white54),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Themes & Styles')),
        body: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Headline', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 8),
          Text('Body large text uses theme styles', style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 8),
          Text('Body medium for secondary info', style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 24),
          Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: Theme.of(context).cardColor, borderRadius: BorderRadius.circular(12)),
            child: const Text('This card uses theme cardColor', style: TextStyle(color: Colors.white))),
        ])),
      ),
    );
  }
}
