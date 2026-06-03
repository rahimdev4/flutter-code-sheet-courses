# 🔀 Repository Pattern Flow
```
Provider
  │
  ▼
UseCase.call()
  │
  ▼
NotesRepository (abstract - Domain)
  │
  ▼
NotesRepositoryImpl (Data)
  ├── try remote first
  │     └── NotesRemoteDataSource.getNotes()
  └── fallback to local
        └── NotesLocalDataSource.getCachedNotes()
```
