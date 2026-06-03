# 📁 Feature-First Structure
```
lib/
├── main.dart
├── app.dart
├── core/
│   ├── constants/
│   ├── errors/
│   ├── network/
│   ├── theme/
│   └── utils/
└── features/
    ├── auth/
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    ├── notes/
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    └── profile/
        ├── data/
        ├── domain/
        └── presentation/
```
Each feature is self-contained with its own data, domain, and presentation layers.
