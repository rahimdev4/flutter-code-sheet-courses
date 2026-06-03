# 🏗 Final Project: Clean Notes App
A complete notes app using Clean Architecture with feature-first structure, layered separation, Riverpod state, use cases, repository pattern, mock data sources, and proper error handling.

## ⚠️ Requirements
```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.6.1
```

## ▶️ Run
```bash
flutter run
```

## 🏗 Architecture
```
lib/
├── main.dart                  ← Entry point
├── app.dart                   ← MaterialApp setup
├── core/                      ← Shared utilities
└── features/notes/
    ├── data/                  ← Models, DataSources, RepoImpl
    ├── domain/                ← Entities, Repo Interface, UseCases
    └── presentation/          ← Providers, Screens, Widgets
```

[← Back to Course](../../README.md)
