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
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (_) => const HomeScreen());
        }
        if (settings.name == '/details') {
          final id = settings.arguments as int;
          return MaterialPageRoute(builder: (_) => DetailScreen(id: id));
        }
        return MaterialPageRoute(builder: (_) => const Scaffold(body: Center(child: Text('Page not found'))));
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          onPressed: () => Navigator.pushNamed(context, '/details', arguments: 42),
          child: const Text('View Item 42'),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final int id;
  const DetailScreen({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details for #$id')),
      body: Center(child: Text('Item $id', style: const TextStyle(color: Colors.white, fontSize: 24))),
    );
  }
}
