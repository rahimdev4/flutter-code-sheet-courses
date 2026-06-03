/// Pure domain entity — no JSON, no framework dependencies
class Note {
  final String id;
  final String title;
  final DateTime createdAt;
  const Note({required this.id, required this.title, required this.createdAt});
}
