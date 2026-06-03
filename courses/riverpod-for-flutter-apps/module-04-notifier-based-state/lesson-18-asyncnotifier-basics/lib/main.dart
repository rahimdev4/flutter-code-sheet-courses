import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

class AsyncTodoNotifier extends AsyncNotifier<List<String>> {
  @override
  Future<List<String>> build() async {
    await Future.delayed(const Duration(seconds: 2));
    return ['Buy milk', 'Walk dog'];
  }

  Future<void> addTodo(String todo) async {
    // Set state to loading while adding
    state = const AsyncValue.loading();
    // Simulate network delay
    state = await AsyncValue.guard(() async {
      await Future.delayed(const Duration(seconds: 1));
      // Return new state
      return [...state.value ?? [], todo];
    });
  }
}

final todoProvider = AsyncNotifierProvider<AsyncTodoNotifier, List<String>>(AsyncTodoNotifier.new);

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncTodos = ref.watch(todoProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('AsyncNotifier')),
        body: asyncTodos.when(
          data: (todos) => ListView.builder(
            itemCount: todos.length,
            itemBuilder: (ctx, i) => ListTile(title: Text(todos[i], style: const TextStyle(color: Colors.white))),
          ),
          loading: () => const Center(child: CircularProgressIndicator(color: kAccent)),
          error: (err, stack) => Center(child: Text('Error: $err')),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: () => ref.read(todoProvider.notifier).addTodo('New Task'),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
