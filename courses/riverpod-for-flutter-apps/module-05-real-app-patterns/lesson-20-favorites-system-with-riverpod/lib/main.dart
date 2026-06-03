import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

class FavoritesNotifier extends Notifier<List<String>> {
  @override
  List<String> build() => [];

  void toggle(String item) {
    if (state.contains(item)) {
      state = state.where((e) => e != item).toList();
    } else {
      state = [...state, item];
    }
  }
}
final favProvider = NotifierProvider<FavoritesNotifier, List<String>>(FavoritesNotifier.new);

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favs = ref.watch(favProvider);
    final items = ['Pizza', 'Burger', 'Sushi', 'Pasta'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: Text('Favorites (${favs.length})')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (ctx, i) {
            final item = items[i];
            final isFav = favs.contains(item);
            return ListTile(
              title: Text(item, style: const TextStyle(color: Colors.white)),
              trailing: IconButton(
                icon: Icon(isFav ? Icons.favorite : Icons.favorite_border, color: isFav ? Colors.redAccent : Colors.white54),
                onPressed: () => ref.read(favProvider.notifier).toggle(item),
              ),
            );
          },
        ),
      ),
    );
  }
}
