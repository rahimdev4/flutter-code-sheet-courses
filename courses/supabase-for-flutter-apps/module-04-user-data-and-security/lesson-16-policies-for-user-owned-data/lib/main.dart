import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('RLS Policies')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Example Policy:\n\nCREATE POLICY "Users own notes"\nON notes\nFOR ALL\nUSING (auth.uid() = user_id);\n\nThis means:\n• SELECT only your rows\n• INSERT only with your user_id\n• UPDATE/DELETE only your rows', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'monospace'))))));
  }
}
