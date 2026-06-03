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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/message': (context) => const MessageScreen(),
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
          onPressed: () {
            Navigator.pushNamed(context, '/message', arguments: 'Hello from Home!');
          },
          child: const Text('Send Message'),
        ),
      ),
    );
  }
}

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final msg = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text('Message')),
      body: Center(child: Text(msg, style: const TextStyle(color: Colors.white, fontSize: 20))),
    );
  }
}
