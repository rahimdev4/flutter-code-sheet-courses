import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const SearchDemo());
  }
}
class SearchDemo extends StatefulWidget {
  const SearchDemo({super.key});
  @override
  State<SearchDemo> createState() => _SearchDemoState();
}
class _SearchDemoState extends State<SearchDemo> {
  final _all = ['Variables', 'Functions', 'Classes', 'Lists', 'Maps', 'Null Safety', 'Async', 'Widgets', 'Scaffold', 'Navigation'];
  String _query = '';
  @override
  Widget build(BuildContext context) {
    final filtered = _all.where((s) => s.toLowerCase().contains(_query.toLowerCase())).toList();
    return Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(title: const Text('Search UI'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(16), child: TextField(
          onChanged: (v) => setState(() => _query = v),
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(hintText: 'Search lessons...', hintStyle: const TextStyle(color: Colors.white38),
            prefixIcon: const Icon(Icons.search, color: Colors.white38),
            filled: true, fillColor: kCard,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none)),
        )),
        Expanded(child: ListView.builder(
          itemCount: filtered.length,
          itemBuilder: (_, i) => ListTile(
            title: Text(filtered[i], style: const TextStyle(color: Colors.white)),
            leading: const Icon(Icons.book_outlined, color: kAccent),
          ),
        )),
      ]),
    );
  }
}
