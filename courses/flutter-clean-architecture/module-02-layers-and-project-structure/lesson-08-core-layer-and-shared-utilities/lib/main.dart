import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

class AppColors {
  static const bg = Color(0xFF050F19);
  static const accent = Color(0xFF00D9FF);
}
class AppFailure {
  final String message;
  const AppFailure(this.message);
}
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key}); @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: AppColors.bg),
      home: Scaffold(appBar: AppBar(title: const Text('Core Layer'), backgroundColor: kCard, foregroundColor: Colors.white),
        body: const Center(child: Text('Core layer holds:\n• AppColors\n• AppFailure\n• DateFormatter\n• NetworkInfo', style: TextStyle(color: Colors.white, fontSize: 18))))); } }
