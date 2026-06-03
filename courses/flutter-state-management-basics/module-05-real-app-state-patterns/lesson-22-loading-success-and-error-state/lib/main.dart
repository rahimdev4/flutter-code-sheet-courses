import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

enum DataStatus { initial, loading, success, error }

class FetchState extends ChangeNotifier {
  DataStatus status = DataStatus.initial;
  String data = '';

  Future<void> fetchData() async {
    status = DataStatus.loading;
    notifyListeners();
    
    await Future.delayed(const Duration(seconds: 2));
    
    // Simulate random success/failure
    if (DateTime.now().second % 2 == 0) {
      status = DataStatus.success;
      data = 'Server Data Loaded!';
    } else {
      status = DataStatus.error;
    }
    notifyListeners();
  }
}

void main() => runApp(ChangeNotifierProvider(create: (_) => FetchState(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const FetchScreen(),
    );
  }
}

class FetchScreen extends StatelessWidget {
  const FetchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final state = context.watch<FetchState>();
    
    Widget body;
    if (state.status == DataStatus.loading) {
      body = const CircularProgressIndicator(color: kAccent);
    } else if (state.status == DataStatus.error) {
      body = const Text('Network Error! Try again.', style: TextStyle(color: Colors.redAccent, fontSize: 18));
    } else if (state.status == DataStatus.success) {
      body = Text(state.data, style: const TextStyle(color: Colors.greenAccent, fontSize: 24));
    } else {
      body = const Text('Press button to fetch', style: TextStyle(color: Colors.white54, fontSize: 18));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Data State')),
      body: Center(child: body),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kAccent,
        foregroundColor: kBg,
        onPressed: () => context.read<FetchState>().fetchData(),
        child: const Icon(Icons.download),
      ),
    );
  }
}
