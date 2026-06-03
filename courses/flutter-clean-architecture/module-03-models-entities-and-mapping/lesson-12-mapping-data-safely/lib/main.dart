class Note { final String id; final String title; const Note({required this.id, required this.title}); }
class NoteModel extends Note {
  const NoteModel({required super.id, required super.title});
  factory NoteModel.fromJson(Map<String, dynamic> j) => NoteModel(id: j['id']?.toString() ?? '', title: j['title']?.toString() ?? 'Untitled');
}

void main() {
  // Safe mapping: handles missing fields gracefully
  final badJson = {'id': null};
  final note = NoteModel.fromJson(badJson);
  print('Title: ${note.title}'); // "Untitled" — no crash
}
