import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Permission Errors')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Common causes:\n\n❌ User is not logged in\n❌ Security Rules deny the operation\n❌ Missing userId field in document\n❌ Wrong collection path\n\n✅ Check: Rules + Auth state + Document fields', style: TextStyle(color: Colors.white, fontSize: 18))))));
  }
}
