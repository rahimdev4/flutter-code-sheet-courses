import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Auth Overview')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Firebase Auth Methods:\n\n📧 Email + Password\n🌐 Google, Apple, GitHub OAuth\n📱 Phone OTP\n👤 Anonymous\n🔗 Custom Token\n\nAll methods give you a User object with uid, email, etc.', style: TextStyle(color: Colors.white, fontSize: 18))))));
  }
}
