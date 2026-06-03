/// Lesson 17 — Model Classes and JSON
///
/// Converting between JSON (Maps) and Dart objects.

import 'dart:convert';

void main() {
  // ── JSON data (as you'd get from an API) ──
  String jsonString = '{"name": "Alice", "email": "alice@example.com", "age": 25}';

  // Parse JSON string to Map
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  print('Raw JSON Map: $jsonMap');

  // ── Convert JSON to Dart object ──
  User user = User.fromJson(jsonMap);
  print('');
  print('── User Object ──');
  print('Name: ${user.name}');
  print('Email: ${user.email}');
  print('Age: ${user.age}');

  // ── Convert Dart object back to JSON ──
  Map<String, dynamic> backToJson = user.toJson();
  print('');
  print('── Back to JSON ──');
  print('Map: $backToJson');
  print('String: ${jsonEncode(backToJson)}');

  // ── Working with a list of JSON objects ──
  print('');
  print('── Multiple Users ──');
  List<Map<String, dynamic>> usersJson = [
    {'name': 'Bob', 'email': 'bob@example.com', 'age': 30},
    {'name': 'Charlie', 'email': 'charlie@example.com', 'age': 22},
  ];

  List<User> users = usersJson.map((json) => User.fromJson(json)).toList();
  for (var u in users) {
    print('  ${u.name} (${u.email})');
  }
}

/// A model class representing a User.
class User {
  final String name;
  final String email;
  final int age;

  User({required this.name, required this.email, required this.age});

  /// Creates a User from a JSON map.
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      email: json['email'] as String,
      age: json['age'] as int,
    );
  }

  /// Converts this User to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'age': age,
    };
  }
}
