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
        appBar: AppBar(title: const Text('Hive Limits')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(
          child: Text('✅ Hive is great for:\n• Simple models, settings, lists\n• Fast reads and writes\n\n❌ Hive is NOT great for:\n• Complex queries (use SQLite)\n• Relational data (joins)\n• Very large datasets (100k+ rows)', style: TextStyle(color: Colors.white, fontSize: 18)),
        )),
      ),
    );
  }
}
