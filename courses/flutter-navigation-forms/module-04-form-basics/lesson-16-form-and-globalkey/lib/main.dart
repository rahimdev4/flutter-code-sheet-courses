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
      home: const FormDemo(),
    );
  }
}

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});
  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form & GlobalKey')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(filled: true, fillColor: kCard, hintText: 'Field 1'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(filled: true, fillColor: kCard, hintText: 'Field 2'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
                onPressed: () {
                  _formKey.currentState!.save();
                  print('Form saved');
                },
                child: const Text('Submit Form'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
