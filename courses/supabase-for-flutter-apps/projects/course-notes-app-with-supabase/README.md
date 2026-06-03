# 🏗 Final Project: Course Notes App with Supabase
A complete app demonstrating Supabase Auth, CRUD, user-owned data, and local cache.

## Features
- Email login / sign up
- Notes list (user-owned)
- Add, update, delete notes
- Loading / error / empty states
- Repository pattern
- Basic local cache concept

## ⚠️ Requirements
```yaml
dependencies:
  flutter:
    sdk: flutter
  supabase_flutter: ^2.8.0
  flutter_riverpod: ^2.6.1
```

> Replace `SUPABASE_URL` and `SUPABASE_ANON_KEY` with your own project values.

## 🗄 Supabase Table Setup
```sql
CREATE TABLE notes (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id uuid REFERENCES auth.users NOT NULL,
  title text NOT NULL,
  created_at timestamptz DEFAULT now()
);
ALTER TABLE notes ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can manage own notes" ON notes FOR ALL USING (auth.uid() = user_id);
```

## ▶️ How to Run
```bash
flutter run
```

---
[← Back to Course](../../README.md)
