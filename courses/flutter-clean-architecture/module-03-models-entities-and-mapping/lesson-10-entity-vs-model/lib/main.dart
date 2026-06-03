// Entity: pure, no JSON
class Note {
  final String id; final String title;
  const Note({required this.id, required this.title});
}

// Model: extends entity, adds JSON
class NoteModel extends Note {
  const NoteModel({required super.id, required super.title});
  factory NoteModel.fromJson(Map<String, dynamic> j) => NoteModel(id: j['id'], title: j['title']);
  Map<String, dynamic> toJson() => {'id': id, 'title': title};
}

void main() {
  final model = NoteModel.fromJson({'id': '1', 'title': 'Test'});
  final Note entity = model; // Model IS an entity
  print('Entity title: ${entity.title}');
}
