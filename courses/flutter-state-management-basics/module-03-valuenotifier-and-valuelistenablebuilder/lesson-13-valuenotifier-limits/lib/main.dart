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
      home: ListNotifierDemo(),
    );
  }
}

class ListNotifierDemo extends StatelessWidget {
  ListNotifierDemo({super.key});

  final ValueNotifier<List<String>> _listNotifier = ValueNotifier<List<String>>([]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ValueNotifier Limits')),
      body: ValueListenableBuilder<List<String>>(
        valueListenable: _listNotifier,
        builder: (context, list, _) {
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (ctx, i) => ListTile(title: Text(list[i], style: const TextStyle(color: Colors.white))),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kAccent,
        foregroundColor: kBg,
        onPressed: () {
          // MISTAKE: Mutating the list does not trigger listeners!
          // _listNotifier.value.add('New Item'); 
          
          // CORRECT: You must assign a brand new reference
          _listNotifier.value = List.from(_listNotifier.value)..add('New Item');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
