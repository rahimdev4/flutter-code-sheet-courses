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
      home: const UserListScreen(),
    );
  }
}

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Alice', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const UserDetailScreen(name: 'Alice')));
            },
          ),
          ListTile(
            title: const Text('Bob', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const UserDetailScreen(name: 'Bob')));
            },
          )
        ],
      ),
    );
  }
}

class UserDetailScreen extends StatelessWidget {
  final String name;
  const UserDetailScreen({super.key, required this.name});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$name Profile')),
      body: Center(child: Text('Viewing profile for $name', style: const TextStyle(color: Colors.white))),
    );
  }
}
