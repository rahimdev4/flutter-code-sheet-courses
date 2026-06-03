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
      home: const AsyncDemo(),
    );
  }
}

class AsyncDemo extends StatefulWidget {
  const AsyncDemo({super.key});
  @override
  State<AsyncDemo> createState() => _AsyncDemoState();
}

class _AsyncDemoState extends State<AsyncDemo> {
  bool _isLoading = false;
  String _data = 'No data yet';

  Future<void> _fetchData() async {
    setState(() => _isLoading = true);
    
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));
    
    setState(() {
      _isLoading = false;
      _data = 'Data loaded successfully!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Async State')),
      body: Center(
        child: _isLoading 
            ? const CircularProgressIndicator(color: kAccent)
            : Text(_data, style: const TextStyle(color: Colors.white, fontSize: 20)),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kAccent,
        foregroundColor: kBg,
        onPressed: _fetchData,
        child: const Icon(Icons.download),
      ),
    );
  }
}
