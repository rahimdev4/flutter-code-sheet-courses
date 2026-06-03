import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Create a Project')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Steps:\n\n1. Go to supabase.com\n2. Click "Start your project"\n3. Create an organization\n4. Create a new project\n5. Copy URL and anon key from Settings > API', style: TextStyle(color: Colors.white, fontSize: 18))))));
  }
}
