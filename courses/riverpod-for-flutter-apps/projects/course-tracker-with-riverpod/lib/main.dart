import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

// --- Models ---
class Course {
  final String id;
  final String title;
  final bool isCompleted;
  final bool isFavorite;

  Course({required this.id, required this.title, this.isCompleted = false, this.isFavorite = false});

  Course copyWith({bool? isCompleted, bool? isFavorite}) {
    return Course(
      id: id,
      title: title,
      isCompleted: isCompleted ?? this.isCompleted,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

// --- State Providers ---
final themeProvider = StateProvider<bool>((ref) => true); // true = dark

class CoursesNotifier extends Notifier<List<Course>> {
  @override
  List<Course> build() {
    return [
      Course(id: '1', title: 'Flutter Basics'),
      Course(id: '2', title: 'Riverpod Advanced'),
      Course(id: '3', title: 'Firebase Integration'),
    ];
  }

  void toggleFavorite(String id) {
    state = state.map((c) => c.id == id ? c.copyWith(isFavorite: !c.isFavorite) : c).toList();
  }

  void toggleCompleted(String id) {
    state = state.map((c) => c.id == id ? c.copyWith(isCompleted: !c.isCompleted) : c).toList();
  }
}

final coursesProvider = NotifierProvider<CoursesNotifier, List<Course>>(CoursesNotifier.new);

final progressProvider = Provider<double>((ref) {
  final courses = ref.watch(coursesProvider);
  if (courses.isEmpty) return 0.0;
  final completed = courses.where((c) => c.isCompleted).length;
  return completed / courses.length;
});

// --- UI ---
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: isDark ? Brightness.dark : Brightness.light,
        scaffoldBackgroundColor: isDark ? kBg : Colors.grey[100],
        appBarTheme: AppBarTheme(backgroundColor: isDark ? kCard : Colors.blue, foregroundColor: Colors.white),
      ),
      home: const TrackerScreen(),
    );
  }
}

class TrackerScreen extends ConsumerWidget {
  const TrackerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courses = ref.watch(coursesProvider);
    final progress = ref.watch(progressProvider);
    final isDark = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Tracker'),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => ref.read(themeProvider.notifier).state = !isDark,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: isDark ? kCard : Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: progress,
                    color: kGreen,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    minHeight: 10,
                  ),
                ),
                const SizedBox(width: 16),
                Text('${(progress * 100).toInt()}%', style: TextStyle(color: isDark ? Colors.white : Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return Card(
                  color: isDark ? kCard : Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Checkbox(
                      value: course.isCompleted,
                      activeColor: kGreen,
                      onChanged: (_) => ref.read(coursesProvider.notifier).toggleCompleted(course.id),
                    ),
                    title: Text(course.title, style: TextStyle(color: isDark ? Colors.white : Colors.black)),
                    trailing: IconButton(
                      icon: Icon(
                        course.isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: course.isFavorite ? Colors.redAccent : Colors.grey,
                      ),
                      onPressed: () => ref.read(coursesProvider.notifier).toggleFavorite(course.id),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
