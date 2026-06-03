import '../../domain/entities/note.dart';
/// Data model with JSON conversion — used in data layer only
class NoteModel extends Note {
  const NoteModel({required super.id, required super.title, required super.createdAt});
  factory NoteModel.fromMap(Map<String, dynamic> map) => NoteModel(
    id: map['id'] as String, title: map['title'] as String, createdAt: DateTime.parse(map['createdAt'] as String));
  Map<String, dynamic> toMap() => {'id': id, 'title': title, 'createdAt': createdAt.toIso8601String()};
}
