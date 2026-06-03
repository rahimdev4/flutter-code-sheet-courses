# ⚡ Riverpod + Clean Architecture Flow
```
UI Widget (ConsumerWidget)
  │  ref.watch(notesProvider)
  ▼
notesProvider (FutureProvider / StateNotifier)
  │  calls use case
  ▼
GetNotesUseCase
  │  calls repository
  ▼
NotesRepository (interface)
  │
  ▼
NotesRepositoryImpl
  ├── RemoteDataSource
  └── LocalDataSource
```
