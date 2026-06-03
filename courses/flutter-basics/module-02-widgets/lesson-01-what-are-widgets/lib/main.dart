import 'package:flutter/material.dart';

/// Lesson 01 — What Are Widgets?
///
/// Demonstrates StatelessWidget and StatefulWidget.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WidgetDemo(),
    );
  }
}

/// A StatefulWidget that demonstrates state management.
class WidgetDemo extends StatefulWidget {
  const WidgetDemo({super.key});

  @override
  State<WidgetDemo> createState() => _WidgetDemoState();
}

class _WidgetDemoState extends State<WidgetDemo> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('What Are Widgets?'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // StatelessWidget example — always the same
            const GreetingWidget(message: 'Hello, Flutter!'),
            const SizedBox(height: 30),

            // StatefulWidget — changes when button is pressed
            Text(
              'Counter: $_counter',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'This text updates because this is a StatefulWidget.',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

/// A simple StatelessWidget — it never changes.
class GreetingWidget extends StatelessWidget {
  final String message;

  const GreetingWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(fontSize: 20, color: Colors.teal),
    );
  }
}
