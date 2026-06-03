# 🏗 Final Project: Firebase Notes App
A complete app demonstrating Firebase Auth, Firestore CRUD, user-owned data, and Repository pattern.

## Features
- Email login / sign up
- Notes list (user-owned)
- Add, update, delete notes
- Loading / error / empty states
- Repository pattern
- Optional Riverpod state

## ⚠️ Requirements
```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^3.6.0
  firebase_auth: ^5.3.1
  cloud_firestore: ^5.4.4
  flutter_riverpod: ^2.6.1
```

> You must configure Firebase via FlutterFire CLI before running.

## 🗄 Firestore Structure
```
notes (collection)
  └── {noteId} (document)
      ├── title: string
      ├── userId: string
      └── createdAt: timestamp
```

## ▶️ How to Run
```bash
flutter run
```

---
[← Back to Course](../../README.md)
