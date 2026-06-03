# 📱 Flutter Code Sheet — Course Resources

Welcome to the official source code repository for the **Flutter Code Sheet** learning app.

This repo contains all public source code examples, practice files, and course resources used across the app's learning modules.

---

## 📖 What Is This Repo?

Flutter Code Sheet is a mobile app designed to teach **Dart** and **Flutter** from scratch. Each lesson in the app is paired with a working code example stored here. Students can browse, run, and modify these examples to deepen their understanding.

---

## 🗂 How Folders Are Organized

```
flutter-code-sheet-courses/
├── docs/            → Guides and contribution rules
├── assets/          → Thumbnails and images for courses
├── courses/         → All course content
│   ├── dart-fundamentals/
│   │   ├── module-01-.../
│   │   │   ├── lesson-01-.../
│   │   │   │   ├── README.md    ← Lesson explanation
│   │   │   │   └── main.dart    ← Runnable example
│   │   │   └── ...
│   │   └── ...
│   └── flutter-basics/
│       └── ... (same structure, with lib/main.dart for Flutter examples)
└── scripts/         → Utility scripts
```

- **One repo, many courses.** All courses live under `courses/`.
- Each course has **modules**, and each module has **lessons**.
- Every lesson folder contains a `README.md` and a runnable code file.

---

## 🚀 How to Run Examples

### Dart (Console) Examples

```bash
# Navigate to a lesson folder
cd courses/dart-fundamentals/module-01-getting-started/lesson-01-what-is-dart/

# Run the example
dart run main.dart
```

### Flutter Examples

```bash
# Navigate to a Flutter lesson or project folder
cd courses/flutter-basics/module-01-getting-started/lesson-01-what-is-flutter/

# Run the Flutter app
flutter run
```

> **Tip:** You can also paste Dart examples directly into [DartPad](https://dartpad.dev) to run them in the browser.

---

## 📲 Get the App

Download **Flutter Code Sheet** to follow along with guided lessons, quizzes, and progress tracking:

- 🤖 [Google Play](https://play.google.com/store/apps/details?id=com.gymli.app)

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

Made with ❤️ for Flutter learners everywhere.
