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
        appBar: AppBar(title: const Text('API Docs')),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'When you work with APIs, backend developers give you "Docs" (like Swagger or Postman). \n\nDocs tell you the URL, if it needs a GET or POST, what JSON to send, and what JSON you will get back!', 
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
