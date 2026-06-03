import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _favs = [];
  final _items = ['Pizza', 'Burger', 'Sushi', 'Pasta'];

  @override
  void initState() { super.initState(); _load(); }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => _favs = prefs.getStringList('favs') ?? []);
  }

  Future<void> _toggle(String item) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() { _favs.contains(item) ? _favs.remove(item) : _favs.add(item); });
    await prefs.setStringList('favs', _favs);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Persisted Favorites')),
        body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (ctx, i) {
            final item = _items[i];
            final isFav = _favs.contains(item);
            return ListTile(
              title: Text(item, style: const TextStyle(color: Colors.white)),
              trailing: IconButton(icon: Icon(isFav ? Icons.favorite : Icons.favorite_border, color: isFav ? Colors.redAccent : Colors.white54), onPressed: () => _toggle(item)),
            );
          },
        ),
      ),
    );
  }
}
