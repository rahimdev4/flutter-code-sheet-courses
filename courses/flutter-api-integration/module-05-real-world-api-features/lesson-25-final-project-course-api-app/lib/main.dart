import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

// --- Models ---
class Course {
  final int id;
  final String title;
  final String body;

  Course({required this.id, required this.title, required this.body});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

// --- Service ---
class ApiService {
  Future<List<Course>> fetchCourses() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts?_limit=10'));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((json) => Course.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load courses');
    }
  }
}
final apiProvider = Provider((ref) => ApiService());

// --- State ---
class CourseNotifier extends AsyncNotifier<List<Course>> {
  @override
  Future<List<Course>> build() async {
    return ref.read(apiProvider).fetchCourses();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => ref.read(apiProvider).fetchCourses());
  }

  void search(String query) async {
    if (query.isEmpty) {
      refresh();
      return;
    }
    // Simple local search for demonstration
    final all = await ref.read(apiProvider).fetchCourses();
    final filtered = all.where((c) => c.title.toLowerCase().contains(query.toLowerCase())).toList();
    state = AsyncValue.data(filtered);
  }
}
final courseListProvider = AsyncNotifierProvider<CourseNotifier, List<Course>>(CourseNotifier.new);

// --- UI ---
void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kBg,
        appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white),
      ),
      home: const CourseListScreen(),
    );
  }
}

class CourseListScreen extends ConsumerWidget {
  const CourseListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCourses = ref.watch(courseListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('API Courses'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (val) => ref.read(courseListProvider.notifier).search(val),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: const TextStyle(color: Colors.white54),
                filled: true,
                fillColor: kBg,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                prefixIcon: const Icon(Icons.search, color: kAccent),
              ),
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        color: kAccent,
        backgroundColor: kCard,
        onRefresh: () => ref.read(courseListProvider.notifier).refresh(),
        child: asyncCourses.when(
          data: (courses) => ListView.builder(
            itemCount: courses.length,
            itemBuilder: (ctx, i) => Card(
              color: kCard,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                title: Text(courses[i].title, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(courses[i].body, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.white70)),
                leading: CircleAvatar(backgroundColor: kAccent, child: Text('${courses[i].id}', style: const TextStyle(color: kBg))),
              ),
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator(color: kAccent)),
          error: (e, st) => Center(child: Text('Error: $e', style: const TextStyle(color: Colors.red))),
        ),
      ),
    );
  }
}
