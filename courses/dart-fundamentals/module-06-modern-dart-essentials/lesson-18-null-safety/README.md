# Lesson 16 — Null Safety

## 📖 Explanation

Null safety is a feature that helps you avoid null reference errors — one of the most common bugs in programming. In Dart, variables are non-nullable by default. You must explicitly mark a variable as nullable if it can hold `null`.

## 💡 What This Example Demonstrates

- Non-nullable vs nullable types (`String` vs `String?`)
- The null-aware operator (`??`)
- The null assertion operator (`!`)
- Conditional property access (`?.`)

## ▶️ How to Run

```bash
dart run main.dart
```

## 🧪 Practice Challenge

Create a function that takes a nullable `String?` name parameter. If the name is null, return "Guest". Otherwise, return the name in uppercase.

---

<!-- APP_LESSON_LINK: dart-fundamentals/module-06/lesson-16 -->
[Open in Flutter Code Sheet](#)
