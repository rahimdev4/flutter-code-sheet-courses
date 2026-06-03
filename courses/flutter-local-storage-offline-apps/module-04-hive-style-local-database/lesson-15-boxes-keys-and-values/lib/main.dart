import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('myBox');
  runApp(MyApp(box: box));
}

class MyApp extends StatefulWidget {
  final Box box;
  const MyApp({super.key, required this.box});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final name = widget.box.get('name', defaultValue: 'No name saved');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Boxes & Keys')),
        body: Center(child: Text('Name: $name', style: const TextStyle(color: Colors.white, fontSize: 24))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: () {
          widget.box.put('name', 'Flutter Dev');
          setState(() {});
        }, child: const Icon(Icons.save)),
      ),
    );
  }
}
