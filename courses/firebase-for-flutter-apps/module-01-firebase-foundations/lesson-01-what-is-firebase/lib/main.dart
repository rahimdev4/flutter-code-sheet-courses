import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('What is Firebase?')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('🔥 Firebase provides:\n\n🔐 Authentication\n🗄 Cloud Firestore (NoSQL)\n📦 Cloud Storage\n📡 Cloud Messaging (Push)\n📊 Analytics\n⚡ Hosting, Functions, and more!\n\nAll by Google, with a generous free tier.', style: TextStyle(color: Colors.white, fontSize: 18))))));
  }
}
