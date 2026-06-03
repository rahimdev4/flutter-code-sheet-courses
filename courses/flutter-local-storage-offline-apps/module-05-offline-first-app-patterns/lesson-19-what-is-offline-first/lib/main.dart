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
        appBar: AppBar(title: const Text('Offline First')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(
          child: Text('Offline First means:\n\n1. Show cached/local data immediately\n2. Try to fetch fresh data from server\n3. If network fails, the app still works!\n4. Sync changes when connectivity returns', style: TextStyle(color: Colors.white, fontSize: 18)),
        )),
      ),
    );
  }
}
