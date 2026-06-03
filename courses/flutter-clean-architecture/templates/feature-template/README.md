# 📂 Feature Template
Copy this folder when creating a new feature in your app.

```
feature-name/
├── data/
│   ├── datasources/    ← Remote & local sources
│   ├── models/         ← JSON serialization models
│   └── repositories/   ← Repository implementations
├── domain/
│   ├── entities/       ← Pure business objects
│   ├── repositories/   ← Abstract repository contracts
│   └── usecases/       ← Business logic actions
└── presentation/
    ├── providers/      ← Riverpod state
    ├── screens/        ← UI pages
    └── widgets/        ← Reusable UI pieces
```
