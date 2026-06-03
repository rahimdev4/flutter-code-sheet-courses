import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Demo')),
      drawer: Drawer(
        backgroundColor: kBg,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: kCard),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: kAccent),
              title: const Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // close drawer
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Swipe right to open drawer', style: TextStyle(color: Colors.white))),
    );
  }
}
