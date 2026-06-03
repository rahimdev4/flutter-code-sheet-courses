import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> fetchProtectedData() async {
    const String myToken = "ey.Secure.Token.123";
    
    // Attach token in headers
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      headers: {
        'Authorization': 'Bearer $myToken', // The crucial part!
        'Content-Type': 'application/json',
      }
    );
    print(response.statusCode);
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Auth Tokens')),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
            onPressed: fetchProtectedData,
            child: const Text('Send Auth Header'),
          ),
        ),
      ),
    );
  }
}
