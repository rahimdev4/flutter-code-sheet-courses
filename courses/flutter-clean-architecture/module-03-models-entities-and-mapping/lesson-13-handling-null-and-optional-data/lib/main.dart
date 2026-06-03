void main() {
  final Map<String, dynamic> response = {'name': null, 'age': 25};
  // Safe access
  final name = response['name'] as String? ?? 'Unknown';
  final age = response['age'] as int? ?? 0;
  final email = response['email'] as String? ?? 'not set';
  print('Name: $name, Age: $age, Email: $email');
}
