import '../models/note_model.dart';
/// Mock remote data source — replace with real API/Supabase/Firebase
class NotesRemoteDataSource {
  final List<Map<String, dynamic>> _fakeDb = [];
  Future<List<NoteModel>> fetchNotes() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _fakeDb.map(NoteModel.fromMap).toList();
  }
  Future<void> addNote(String title) async {
    _fakeDb.add({'id': DateTime.now().millisecondsSinceEpoch.toString(), 'title': title, 'createdAt': DateTime.now().toIso8601String()});
  }
  Future<void> updateNote(String id, String title) async {
    final i = _fakeDb.indexWhere((n) => n['id'] == id);
    if (i != -1) _fakeDb[i]['title'] = title;
  }
  Future<void> deleteNote(String id) async { _fakeDb.removeWhere((n) => n['id'] == id); }
}
