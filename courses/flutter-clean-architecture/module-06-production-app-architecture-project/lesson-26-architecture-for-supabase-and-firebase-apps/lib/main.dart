abstract class BackendDataSource { Future<List<String>> fetchNotes(); }
class SupabaseSource implements BackendDataSource { @override Future<List<String>> fetchNotes() async => ['Supabase Note 1']; }
class FirebaseSource implements BackendDataSource { @override Future<List<String>> fetchNotes() async => ['Firebase Note 1']; }
class NotesRepo {
  final BackendDataSource source;
  NotesRepo(this.source);
  Future<List<String>> getNotes() => source.fetchNotes();
}
void main() async {
  // Swap backend without changing business logic
  final repo = NotesRepo(SupabaseSource());
  print(await repo.getNotes());
}
