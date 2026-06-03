import '../models/note_model.dart';
/// Mock local cache — replace with SharedPreferences/Hive
class NotesLocalDataSource {
  List<NoteModel>? _cache;
  Future<List<NoteModel>?> getCachedNotes() async => _cache;
  Future<void> cacheNotes(List<NoteModel> notes) async { _cache = notes; }
}
