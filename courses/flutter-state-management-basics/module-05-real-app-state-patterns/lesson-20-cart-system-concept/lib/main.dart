import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

class CartState extends ChangeNotifier {
  int items = 0;
  double pricePerItem = 15.50;
  double get total => items * pricePerItem;

  void addToCart() { items++; notifyListeners(); }
}

void main() => runApp(ChangeNotifierProvider(create: (_) => CartState(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const CartScreen(),
    );
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final state = context.watch<CartState>();
    return Scaffold(
      appBar: AppBar(title: const Text('Cart System')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Items in Cart: ${state.items}', style: const TextStyle(color: Colors.white, fontSize: 24)),
            Text('Total: \$${state.total.toStringAsFixed(2)}', style: const TextStyle(color: kGreen, fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
              onPressed: () => context.read<CartState>().addToCart(),
              child: const Text('Add Product'),
            )
          ],
        ),
      ),
    );
  }
}
