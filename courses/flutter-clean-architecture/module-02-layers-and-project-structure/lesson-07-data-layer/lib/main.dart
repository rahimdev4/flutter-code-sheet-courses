// Data layer: implements domain contracts
class NoteModel {
  final String id; final String title;
  NoteModel({required this.id, required this.title});
  factory NoteModel.fromJson(Map<String, dynamic> j) => NoteModel(id: j['id'], title: j['title']);
  Map<String, dynamic> toJson() => {'id': id, 'title': title};
}

class NotesRemoteDataSource {
  Future<List<NoteModel>> fetchNotes() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return [NoteModel(id: '1', title: 'Learn Clean Arch')];
  }
}

void main() async {
  final source = NotesRemoteDataSource();
  final notes = await source.fetchNotes();
  print('Fetched: ${notes.first.title}');
}
