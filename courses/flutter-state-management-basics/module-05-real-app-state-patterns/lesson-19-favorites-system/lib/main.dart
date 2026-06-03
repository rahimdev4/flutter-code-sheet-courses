import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

class FavoritesState extends ChangeNotifier {
  final List<String> _favs = [];
  bool isFav(String item) => _favs.contains(item);

  void toggleFav(String item) {
    if (_favs.contains(item)) { _favs.remove(item); } else { _favs.add(item); }
    notifyListeners();
  }
}

void main() => runApp(ChangeNotifierProvider(create: (_) => FavoritesState(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const FavScreen(),
    );
  }
}

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final items = ['Apple', 'Banana', 'Cherry', 'Date'];
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, i) {
          final item = items[i];
          final isFaved = context.watch<FavoritesState>().isFav(item);
          return ListTile(
            title: Text(item, style: const TextStyle(color: Colors.white)),
            trailing: IconButton(
              icon: Icon(isFaved ? Icons.favorite : Icons.favorite_border, color: isFaved ? Colors.redAccent : Colors.white54),
              onPressed: () => context.read<FavoritesState>().toggleFav(item),
            ),
          );
        },
      ),
    );
  }
}
