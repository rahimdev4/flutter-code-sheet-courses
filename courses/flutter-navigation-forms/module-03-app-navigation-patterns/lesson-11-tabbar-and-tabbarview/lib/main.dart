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
      home: const DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            labelColor: kAccent,
            unselectedLabelColor: Colors.white54,
            indicatorColor: kAccent,
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'List'),
              Tab(icon: Icon(Icons.grid_on), text: 'Grid'),
            ],
          ),
          body: TabBarView(
            children: [
              Center(child: Text('List View', style: TextStyle(color: Colors.white))),
              Center(child: Text('Grid View', style: TextStyle(color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}
