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
        appBar: AppBar(title: const Text('Common Mistakes')),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text('❌ Forgetting `await` on save/read\n❌ Storing large lists or images\n❌ Using it as a database\n❌ Not providing default values\n\n✅ Use SharedPreferences for small, simple data only!', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
      ),
    );
  }
}
