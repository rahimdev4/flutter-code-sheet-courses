# 📘 Repository Guide

This document explains how this repository is structured and maintained.

---

## Naming Conventions

| Item       | Format                              | Example                                |
|------------|-------------------------------------|----------------------------------------|
| Course     | `kebab-case`                        | `dart-fundamentals`                    |
| Module     | `module-NN-descriptive-name`        | `module-01-getting-started`            |
| Lesson     | `lesson-NN-descriptive-name`        | `lesson-01-what-is-dart`               |
| Project    | `kebab-case`                        | `counter-app`                          |

## Folder Rules

1. Every **course** folder must have a `README.md` and `course-info.json`.
2. Every **module** folder must have a `README.md`.
3. Every **lesson** folder must have a `README.md` and a runnable code file.
4. Pure Dart lessons use `main.dart` at the folder root.
5. Flutter lessons use `lib/main.dart` inside the lesson folder.

## Branching

- `main` — stable, reviewed content only.
- `draft/<course-name>` — work-in-progress content for a new course.
- `fix/<description>` — bug fixes for existing examples.

---

## Adding a New Course

1. Create a folder under `courses/` with the course name.
2. Add `README.md` and `course-info.json`.
3. Create module folders with numbered prefixes.
4. Add lesson folders inside each module.
5. Run `dart scripts/validate-structure.dart` to verify.
