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
      home: const ErrorDemo(),
    );
  }
}

class ErrorDemo extends StatefulWidget {
  const ErrorDemo({super.key});
  @override
  State<ErrorDemo> createState() => _ErrorDemoState();
}

class _ErrorDemoState extends State<ErrorDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Errors')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true, fillColor: kCard, hintText: 'Required Field',
                  errorStyle: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
                validator: (value) => (value == null || value.isEmpty) ? 'Please fill this in!' : null,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
                onPressed: () => _formKey.currentState!.validate(),
                child: const Text('Validate'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
