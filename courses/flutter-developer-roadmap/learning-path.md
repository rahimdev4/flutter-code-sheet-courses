# Flutter Developer Roadmap — Learning Path

A course-by-course guide with recommended projects after each stage.

---

## Stage 1: Programming Foundation

### Course: [01 Dart Fundamentals](../dart-fundamentals)

**Why start here:** Every line of Flutter code is Dart. Skipping Dart fundamentals leads to confusion when you encounter classes, async code, and null safety in Flutter.

**Do not skip:**
- Classes and constructors
- Null safety operators
- Async/await and Futures
- Error handling

**Project after this course:**
Build a calculator logic program in pure Dart. Accept user input, perform operations, handle division by zero, and print results. No Flutter needed.

---

## Stage 2: Flutter UI Foundations

### Course: [02 Flutter Basics](../flutter-basics)

**Why:** Learn how Flutter renders UI with widgets. Understand the widget tree, Scaffold, AppBar, and basic layout.

**Do not skip:**
- StatelessWidget vs StatefulWidget
- setState fundamentals
- Hot reload workflow

**Project after this course:**
Build a simple counter app with increment, decrement, and reset buttons.

---

### Course: [03 Flutter UI & Layouts](../flutter-ui-layouts)

**Why:** Real apps need complex layouts. Master Row, Column, Stack, ListView, and responsive design.

**Do not skip:**
- Expanded and Flexible
- ListView.builder for dynamic lists
- BoxDecoration for styled containers

**Project after this course:**
Build three screens: a profile card with avatar and stats, a dashboard with grid cards, and a settings page with toggles.

---

### Course: [04 Flutter Navigation & Forms](../flutter-navigation-forms)

**Why:** Multi-screen apps need navigation. User input needs forms and validation.

**Do not skip:**
- Named routes
- Passing data between screens
- TextFormField validation

**Project after this course:**
Build a complete login and signup flow with email/password validation, navigation between screens, and a welcome page.

---

## Stage 3: State Management

### Course: [05 Flutter State Management Basics](../flutter-state-management-basics)

**Why:** Understanding when setState works and when it doesn't is critical before learning Riverpod.

**Do not skip:**
- Lifting state up
- When setState becomes unmanageable
- Why state management solutions exist

**Project after this course:**
Build a favorites list where users can add and remove items, with the count displayed in the app bar.

---

### Course: [06 Riverpod for Flutter Apps](../riverpod-for-flutter-apps)

**Why:** Riverpod is the modern, recommended state management for Flutter. It handles dependency injection, async state, and complex app logic cleanly.

**Do not skip:**
- FutureProvider for API data
- StateNotifierProvider for complex state
- Provider scoping and overrides

**Project after this course:**
Build a course tracker app where users can mark lessons as complete, track progress per module, and persist state.

---

## Stage 4: Data and Backend

### Course: [07 Flutter API Integration](../flutter-api-integration)

**Why:** Most real apps fetch data from servers. Understanding HTTP, JSON, and error handling is essential.

**Do not skip:**
- JSON serialization with fromJson/toJson
- Error handling for network failures
- Loading and error states in UI

**Project after this course:**
Build a news app or course browser that fetches data from a public API, displays it in a list, and handles loading/error states.

---

### Course: [08 Flutter Local Storage & Offline Apps](../flutter-local-storage-offline-apps)

**Why:** Users expect apps to work without internet. Local storage enables offline functionality and faster loading.

**Do not skip:**
- SharedPreferences for simple key-value storage
- Hive for structured object storage
- Caching API data for offline access

**Project after this course:**
Build an offline notes app that saves notes locally with Hive, supports add/edit/delete, and works completely without internet.

---

### Course: [09 Supabase for Flutter Apps](../supabase-for-flutter-apps)

**Why:** Supabase provides a complete backend (auth, database, storage, realtime) with a generous free tier. Perfect for indie developers.

**Do not skip:**
- Row Level Security (RLS)
- User-owned data patterns
- Real-time subscriptions

**Project after this course:**
Build a course notes app with Supabase authentication, CRUD operations on notes, user-owned data, and image upload.

---

### Course: [10 Firebase for Flutter Apps](../firebase-for-flutter-apps)

**Why:** Firebase is the most widely used backend for mobile apps. Knowing both Supabase and Firebase makes you versatile.

**Do not skip:**
- Firestore Security Rules
- Auth state management
- Firebase Storage upload flow

**Project after this course:**
Build a Firebase notes app with email login, Firestore CRUD, user-owned notes, and repository pattern.

---

## Stage 5: Professional Architecture

### Course: [11 Flutter Clean Architecture](../flutter-clean-architecture)

**Why:** Without architecture, apps become unmaintainable as they grow. Clean architecture is what separates a developer from a professional developer.

**Do not skip:**
- Feature-first folder structure
- Entity vs Model separation
- Repository pattern and use cases
- Riverpod with clean architecture

**Project after this course:**
Build the Clean Notes App with full separation: entities, models, data sources, repositories, use cases, providers, screens, and widgets — all in their correct layers.

---

## Stage 6: Publishing and Monetization

### Course: [12 Flutter App Publishing & Monetization](../flutter-app-publishing-monetization)

**Why:** Building an app means nothing if it never reaches users. Publishing and monetizing completes the developer journey.

**Do not skip:**
- App signing and keystore management
- Closed testing (14 days, 20+ testers)
- Data Safety and privacy policy
- AdMob integration and ad placement UX

**Project after this course:**
Prepare and publish one real Flutter app to the Google Play Store. Complete the store listing, pass review, and monitor your first 48 hours live.

---

## Recommended Projects Summary

| After Course | Project |
|-------------|---------|
| Dart Fundamentals | Calculator logic in pure Dart |
| Flutter Basics | Counter app |
| UI & Layouts | Profile card, dashboard, settings |
| Navigation & Forms | Login/signup flow |
| State Management | Favorites list with app bar count |
| Riverpod | Course tracker app |
| API Integration | News app from public API |
| Local Storage | Offline notes app with Hive |
| Supabase | Course notes app with auth |
| Firebase | Firebase notes app |
| Clean Architecture | Clean Notes App (full layers) |
| Publishing | Publish one real app to Play Store |

---

## What Comes Next?

After completing all 12 courses:

1. **Build your portfolio** — 3+ GitHub projects, 1+ published app
2. **Explore advanced topics** — Google Maps, payments, push notifications
3. **Contribute** — Open source, write articles, help others
4. **Earn** — Freelance, apply for jobs, or grow your own app business

The roadmap doesn't end. It evolves with your career.
