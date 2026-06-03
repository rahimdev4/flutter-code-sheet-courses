import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Row Level Security')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Row Level Security (RLS):\n\n1. Enable RLS on your table\n2. Create policies that check auth.uid()\n3. Users can only access rows they own\n\nWithout RLS, anyone with the anon key can read everything!', style: TextStyle(color: Colors.white, fontSize: 18))))));
  }
}
