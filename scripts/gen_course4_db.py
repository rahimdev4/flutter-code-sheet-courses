import os
import json

base_dir = "/Users/apple/Desktop/flutter-code-sheet-courses/courses/flutter-navigation-forms"

files = {}

# 1. course-info.json
files[f"{base_dir}/course-info.json"] = """{
  "title": "Flutter Navigation & Forms",
  "slug": "flutter-navigation-forms",
  "level": "beginner",
  "total_lessons": 22,
  "estimated_hours": 5.5,
  "description": "Learn how to connect Flutter screens, pass data between pages, build common navigation patterns, collect user input, validate forms, and create real multi-screen app flows.",
  "modules": [
    {
      "title": "Navigation Fundamentals",
      "slug": "module-01-navigation-fundamentals",
      "lessons": [
        "What is Navigation in Flutter?",
        "Navigator and MaterialPageRoute",
        "Going Back with Navigator.pop",
        "Passing Data to Another Screen"
      ]
    },
    {
      "title": "Multi Screen App Flow",
      "slug": "module-02-multi-screen-app-flow",
      "lessons": [
        "Returning Data from a Screen",
        "Named Routes Basics",
        "Bottom Navigation Flow",
        "Drawer Navigation",
        "Navigation Mistakes to Avoid"
      ]
    },
    {
      "title": "Text Input Essentials",
      "slug": "module-03-text-input-essentials",
      "lessons": [
        "TextField Basics",
        "TextEditingController",
        "InputDecoration and Better UI",
        "Keyboard Types and Password Fields"
      ]
    },
    {
      "title": "Forms and Validation",
      "slug": "module-04-forms-and-validation",
      "lessons": [
        "Form Widget and GlobalKey",
        "Required Field Validation",
        "Email and Password Validation",
        "Dropdowns, Checkboxes, and Switches",
        "Showing Form Errors Clearly"
      ]
    },
    {
      "title": "Real Form Projects",
      "slug": "module-05-real-form-projects",
      "lessons": [
        "Login Form Screen",
        "Signup Form Screen",
        "Edit Profile Form",
        "Final Project: Multi Screen Form App"
      ]
    }
  ]
}"""

# 2. Root README
files[f"{base_dir}/README.md"] = """# 🧭 Flutter Navigation & Forms

Learn how to connect Flutter screens, pass data between pages, build common navigation patterns, collect user input, validate forms, and create real multi-screen app flows.

---

## 📋 Course Info

| Field | Value |
|-------|-------|
| Level | Beginner |
| Lessons | 22 |
| Estimated Time | ~5.5 hours |
| Language | Dart / Flutter |

---

## 🗂 Modules

### Module 01 — Navigation Fundamentals
| # | Lesson |
|---|--------|
| 1 | [What is Navigation in Flutter?](module-01-navigation-fundamentals/lesson-01-what-is-navigation-in-flutter/) |
| 2 | [Navigator and MaterialPageRoute](module-01-navigation-fundamentals/lesson-02-navigator-and-materialpageroute/) |
| 3 | [Going Back with Navigator.pop](module-01-navigation-fundamentals/lesson-03-going-back-with-navigator-pop/) |
| 4 | [Passing Data to Another Screen](module-01-navigation-fundamentals/lesson-04-passing-data-to-another-screen/) |

### Module 02 — Multi Screen App Flow
| # | Lesson |
|---|--------|
| 5 | [Returning Data from a Screen](module-02-multi-screen-app-flow/lesson-05-returning-data-from-a-screen/) |
| 6 | [Named Routes Basics](module-02-multi-screen-app-flow/lesson-06-named-routes-basics/) |
| 7 | [Bottom Navigation Flow](module-02-multi-screen-app-flow/lesson-07-bottom-navigation-flow/) |
| 8 | [Drawer Navigation](module-02-multi-screen-app-flow/lesson-08-drawer-navigation/) |
| 9 | [Navigation Mistakes to Avoid](module-02-multi-screen-app-flow/lesson-09-navigation-mistakes-to-avoid/) |

### Module 03 — Text Input Essentials
| # | Lesson |
|---|--------|
| 10 | [TextField Basics](module-03-text-input-essentials/lesson-10-textfield-basics/) |
| 11 | [TextEditingController](module-03-text-input-essentials/lesson-11-texteditingcontroller/) |
| 12 | [InputDecoration and Better UI](module-03-text-input-essentials/lesson-12-inputdecoration-and-better-ui/) |
| 13 | [Keyboard Types and Password Fields](module-03-text-input-essentials/lesson-13-keyboard-types-and-password-fields/) |

### Module 04 — Forms and Validation
| # | Lesson |
|---|--------|
| 14 | [Form Widget and GlobalKey](module-04-forms-and-validation/lesson-14-form-widget-and-globalkey/) |
| 15 | [Required Field Validation](module-04-forms-and-validation/lesson-15-required-field-validation/) |
| 16 | [Email and Password Validation](module-04-forms-and-validation/lesson-16-email-and-password-validation/) |
| 17 | [Dropdowns, Checkboxes, and Switches](module-04-forms-and-validation/lesson-17-dropdowns-checkboxes-and-switches/) |
| 18 | [Showing Form Errors Clearly](module-04-forms-and-validation/lesson-18-showing-form-errors-clearly/) |

### Module 05 — Real Form Projects
| # | Lesson |
|---|--------|
| 19 | [Login Form Screen](module-05-real-form-projects/lesson-19-login-form-screen/) |
| 20 | [Signup Form Screen](module-05-real-form-projects/lesson-20-signup-form-screen/) |
| 21 | [Edit Profile Form](module-05-real-form-projects/lesson-21-edit-profile-form/) |
| 22 | [Final Project: Multi Screen Form App](module-05-real-form-projects/lesson-22-final-project-multi-screen-form-app/) |

---

## ▶️ How to Use Examples

Each lesson folder contains a standalone Flutter example:

```bash
cd courses/flutter-navigation-forms/module-01-navigation-fundamentals/lesson-01-what-is-navigation-in-flutter/
flutter run
```

---

## 📲 Connected App

These examples are part of the **Flutter Code Sheet** learning app.

- 🤖 [Google Play](https://play.google.com/store/apps/details?id=com.gymli.app)
"""

# 3. Notes
files[f"{base_dir}/notes/flutter-navigation-forms-notes.md"] = """# 📝 Flutter Navigation & Forms — Notes

Quick reference notes for the Flutter Navigation & Forms course.

---

## 🎨 Course Color Palette

| Token | Hex | Usage |
|-------|-----|-------|
| Background | `#050F19` | Main screen background |
| Primary Accent | `#00D9FF` | Highlights, links, active states |
| Secondary Accent | `#00C896` | Success, progress, secondary actions |
| Card Color | `#0B1A2A` | Card backgrounds, surfaces |
| Text | `#FFFFFF` | Primary text |
"""

# 4. Modules READMEs
files[f"{base_dir}/module-01-navigation-fundamentals/README.md"] = """# 📦 Module 01 — Navigation Fundamentals
## 🎯 Module Goal
Understand the basics of Flutter's Navigator and how to move between screens.
## 📚 Lessons
1. [What is Navigation in Flutter?](lesson-01-what-is-navigation-in-flutter/)
2. [Navigator and MaterialPageRoute](lesson-02-navigator-and-materialpageroute/)
3. [Going Back with Navigator.pop](lesson-03-going-back-with-navigator-pop/)
4. [Passing Data to Another Screen](lesson-04-passing-data-to-another-screen/)
## ✅ After This Module You Should Know
- How the navigation stack works
- How to push and pop screens
"""

files[f"{base_dir}/module-02-multi-screen-app-flow/README.md"] = """# 📦 Module 02 — Multi Screen App Flow
## 🎯 Module Goal
Learn standard multi-screen patterns like bottom navigation and drawers.
## 📚 Lessons
5. [Returning Data from a Screen](lesson-05-returning-data-from-a-screen/)
6. [Named Routes Basics](lesson-06-named-routes-basics/)
7. [Bottom Navigation Flow](lesson-07-bottom-navigation-flow/)
8. [Drawer Navigation](lesson-08-drawer-navigation/)
9. [Navigation Mistakes to Avoid](lesson-09-navigation-mistakes-to-avoid/)
## ✅ After This Module You Should Know
- How to use named routes
- How to implement a bottom navigation bar
- How to add a side drawer
"""

files[f"{base_dir}/module-03-text-input-essentials/README.md"] = """# 📦 Module 03 — Text Input Essentials
## 🎯 Module Goal
Collect user input using styled TextFields and controllers.
## 📚 Lessons
10. [TextField Basics](lesson-10-textfield-basics/)
11. [TextEditingController](lesson-11-texteditingcontroller/)
12. [InputDecoration and Better UI](lesson-12-inputdecoration-and-better-ui/)
13. [Keyboard Types and Password Fields](lesson-13-keyboard-types-and-password-fields/)
## ✅ After This Module You Should Know
- How to read input with controllers
- How to customize text fields and use password mode
"""

files[f"{base_dir}/module-04-forms-and-validation/README.md"] = """# 📦 Module 04 — Forms and Validation
## 🎯 Module Goal
Group inputs into forms and validate them before submission.
## 📚 Lessons
14. [Form Widget and GlobalKey](lesson-14-form-widget-and-globalkey/)
15. [Required Field Validation](lesson-15-required-field-validation/)
16. [Email and Password Validation](lesson-16-email-and-password-validation/)
17. [Dropdowns, Checkboxes, and Switches](lesson-17-dropdowns-checkboxes-and-switches/)
18. [Showing Form Errors Clearly](lesson-18-showing-form-errors-clearly/)
## ✅ After This Module You Should Know
- How to use a GlobalKey<FormState>
- How to validate fields and show errors
- How to use dropdowns and toggles
"""

files[f"{base_dir}/module-05-real-form-projects/README.md"] = """# 📦 Module 05 — Real Form Projects
## 🎯 Module Goal
Build complete, multi-screen apps using navigation and forms.
## 📚 Lessons
19. [Login Form Screen](lesson-19-login-form-screen/)
20. [Signup Form Screen](lesson-20-signup-form-screen/)
21. [Edit Profile Form](lesson-21-edit-profile-form/)
22. [Final Project: Multi Screen Form App](lesson-22-final-project-multi-screen-form-app/)
## ✅ After This Module You Should Know
- How to connect login and signup flows
- How to build a complete profile editor
"""

# 5. Final Project
files[f"{base_dir}/projects/multi-screen-form-app/README.md"] = """# 🏗 Multi Screen Form App — Final Project
A complete multi-screen app that combines navigation and forms.

## Features
- Home screen with navigation
- Profile form screen to edit details
- Settings screen with toggles

## ▶️ How to Run
```bash
flutter run
```

---
[← Back to Course](../../README.md)
"""
files[f"{base_dir}/projects/multi-screen-form-app/lib/main.dart"] = """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kBg,
        appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white),
      ),
      home: const MainShell(),
    );
  }
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _index = 0;
  final _screens = [const HomeScreen(), const ProfileScreen(), const SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        backgroundColor: kCard,
        selectedItemColor: kAccent,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to summary
            Navigator.push(context, MaterialPageRoute(builder: (_) => const SummaryScreen()));
          },
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          child: const Text('View Summary'),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name', border: OutlineInputBorder()),
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Saved!')));
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: kGreen, foregroundColor: kBg),
                child: const Text('Save Profile'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Notifications'),
            value: true,
            onChanged: (v) {},
            activeColor: kAccent,
          ),
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: true,
            onChanged: (v) {},
            activeColor: kAccent,
          ),
        ],
      ),
    );
  }
}

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Summary')),
      body: const Center(child: Text('This is the summary screen.', style: TextStyle(fontSize: 18))),
    );
  }
}
"""

# 6. Helper for Lessons
def add_lesson(module_path, lesson_slug, lesson_title, num, desc, code):
    files[f"{base_dir}/{module_path}/{lesson_slug}/README.md"] = f"""# Lesson {num} — {lesson_title}
## 📖 Explanation
{desc}
## ▶️ How to Run
```bash
flutter run
```
## 🧪 Practice Challenge
Try modifying the example to reinforce your learning!

---
[← Back to Course](../../README.md)
"""
    files[f"{base_dir}/{module_path}/{lesson_slug}/lib/main.dart"] = code

# M1
add_lesson("module-01-navigation-fundamentals", "lesson-01-what-is-navigation-in-flutter", "What is Navigation in Flutter?", "01", "Learn the concept of screens (routes) and the Navigator stack in Flutter.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const Scaffold(
        body: Center(
          child: Text('Navigation is managing a stack of screens.', style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
    );
  }
}
""")

add_lesson("module-01-navigation-fundamentals", "lesson-02-navigator-and-materialpageroute", "Navigator and MaterialPageRoute", "02", "Use Navigator.push() and MaterialPageRoute to transition to a new screen.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const ScreenA(),
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen A')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenB()));
          },
          child: const Text('Go to Screen B'),
        ),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen B')),
      body: const Center(
        child: Text('Welcome to Screen B!', style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }
}
""")

add_lesson("module-01-navigation-fundamentals", "lesson-03-going-back-with-navigator-pop", "Going Back with Navigator.pop", "03", "Use Navigator.pop() to remove the current screen and go back.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const ScreenA(),
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen A')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenB()));
          },
          child: const Text('Go to Screen B'),
        ),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen B')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kCard, foregroundColor: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back with pop()'),
        ),
      ),
    );
  }
}
""")

add_lesson("module-01-navigation-fundamentals", "lesson-04-passing-data-to-another-screen", "Passing Data to Another Screen", "04", "Pass data to a new screen by providing it in the constructor.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const UserListScreen(),
    );
  }
}

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Alice', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const UserDetailScreen(name: 'Alice')));
            },
          ),
          ListTile(
            title: const Text('Bob', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const UserDetailScreen(name: 'Bob')));
            },
          )
        ],
      ),
    );
  }
}

class UserDetailScreen extends StatelessWidget {
  final String name;
  const UserDetailScreen({super.key, required this.name});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$name Profile')),
      body: Center(child: Text('Viewing profile for $name', style: const TextStyle(color: Colors.white))),
    );
  }
}
""")

# M2
add_lesson("module-02-multi-screen-app-flow", "lesson-05-returning-data-from-a-screen", "Returning Data from a Screen", "05", "Wait for a screen to pop and return a result using async/await.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const SelectionScreen(),
    );
  }
}

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});
  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  String _selection = 'None';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose an Option')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected: $_selection', style: const TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
              onPressed: () async {
                final result = await Navigator.push(context, MaterialPageRoute(builder: (_) => const OptionScreen()));
                if (result != null) {
                  setState(() => _selection = result as String);
                }
              },
              child: const Text('Pick an option'),
            )
          ],
        ),
      ),
    );
  }
}

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Options')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kGreen, foregroundColor: kBg),
              onPressed: () => Navigator.pop(context, 'Option A'),
              child: const Text('Option A'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, foregroundColor: kBg),
              onPressed: () => Navigator.pop(context, 'Option B'),
              child: const Text('Option B'),
            )
          ],
        ),
      ),
    );
  }
}
""")

add_lesson("module-02-multi-screen-app-flow", "lesson-06-named-routes-basics", "Named Routes Basics", "06", "Define string-based routes in MaterialApp for cleaner navigation code.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
          child: const Text('Open Settings'),
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings Page', style: TextStyle(color: Colors.white))),
    );
  }
}
""")

add_lesson("module-02-multi-screen-app-flow", "lesson-07-bottom-navigation-flow", "Bottom Navigation Flow", "07", "Use BottomNavigationBar to switch between main sections of an app.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final _pages = [
    const Center(child: Text('Home Page', style: TextStyle(color: Colors.white))),
    const Center(child: Text('Search Page', style: TextStyle(color: Colors.white))),
    const Center(child: Text('Profile Page', style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Shell')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kCard,
        selectedItemColor: kAccent,
        unselectedItemColor: Colors.white54,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
""")

add_lesson("module-02-multi-screen-app-flow", "lesson-08-drawer-navigation", "Drawer Navigation", "08", "Implement a side drawer for secondary navigation items.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Demo')),
      drawer: Drawer(
        backgroundColor: kBg,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: kCard),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: kAccent),
              title: const Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // close drawer
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Swipe right to open drawer', style: TextStyle(color: Colors.white))),
    );
  }
}
""")

add_lesson("module-02-multi-screen-app-flow", "lesson-09-navigation-mistakes-to-avoid", "Navigation Mistakes to Avoid", "09", "Keep your navigation logic clean by avoiding deep nesting and bad context usage.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clean Nav')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          // Good Practice: Extract complex navigation out of the build method
          onPressed: () => _navigateToNext(context),
          child: const Text('Go Forward'),
        ),
      ),
    );
  }

  void _navigateToNext(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const NextScreen()));
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next')),
      body: const Center(child: Text('Clean separation of concerns', style: TextStyle(color: Colors.white, fontSize: 18))),
    );
  }
}
""")

# M3
add_lesson("module-03-text-input-essentials", "lesson-10-textfield-basics", "TextField Basics", "10", "Use TextField to accept user input and customize its appearance.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('TextField')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Enter your name',
              labelStyle: const TextStyle(color: Colors.white54),
            ),
            onChanged: (text) {
              print('Input: $text');
            },
          ),
        ),
      ),
    );
  }
}
""")

add_lesson("module-03-text-input-essentials", "lesson-11-texteditingcontroller", "TextEditingController", "11", "Read and manipulate TextField text programmatically using TextEditingController.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const ControllerDemo(),
    );
  }
}

class ControllerDemo extends StatefulWidget {
  const ControllerDemo({super.key});
  @override
  State<ControllerDemo> createState() => _ControllerDemoState();
}

class _ControllerDemoState extends State<ControllerDemo> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Controller Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(filled: true, fillColor: kCard, hintText: 'Type something...', hintStyle: TextStyle(color: Colors.white54)),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('You typed: ${_controller.text}')));
              },
              child: const Text('Show Value'),
            )
          ],
        ),
      ),
    );
  }
}
""")

add_lesson("module-03-text-input-essentials", "lesson-12-inputdecoration-and-better-ui", "InputDecoration and Better UI", "12", "Enhance text fields with borders, fill colors, and icons.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Better UI')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: kCard,
              prefixIcon: const Icon(Icons.search, color: kAccent),
              hintText: 'Search...',
              hintStyle: const TextStyle(color: Colors.white54),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
""")

add_lesson("module-03-text-input-essentials", "lesson-13-keyboard-types-and-password-fields", "Keyboard Types and Password Fields", "13", "Hide text input using obscureText and set TextInputType for emails/numbers.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const PasswordDemo(),
    );
  }
}

class PasswordDemo extends StatefulWidget {
  const PasswordDemo({super.key});
  @override
  State<PasswordDemo> createState() => _PasswordDemoState();
}

class _PasswordDemoState extends State<PasswordDemo> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: kCard,
                labelText: 'Email',
                labelStyle: const TextStyle(color: Colors.white54),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: _obscure,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: kCard,
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.white54),
                suffixIcon: IconButton(
                  icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off, color: kAccent),
                  onPressed: () => setState(() => _obscure = !_obscure),
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
""")

# M4
add_lesson("module-04-forms-and-validation", "lesson-14-form-widget-and-globalkey", "Form Widget and GlobalKey", "14", "Group multiple fields together using a Form widget and a GlobalKey.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const FormDemo(),
    );
  }
}

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});
  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form & GlobalKey')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(filled: true, fillColor: kCard, hintText: 'Field 1'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(filled: true, fillColor: kCard, hintText: 'Field 2'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
                onPressed: () {
                  _formKey.currentState!.save();
                  print('Form saved');
                },
                child: const Text('Submit Form'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
""")

add_lesson("module-04-forms-and-validation", "lesson-15-required-field-validation", "Required Field Validation", "15", "Validate that user input is not empty before proceeding.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const ValidationDemo(),
    );
  }
}

class ValidationDemo extends StatefulWidget {
  const ValidationDemo({super.key});
  @override
  State<ValidationDemo> createState() => _ValidationDemoState();
}

class _ValidationDemoState extends State<ValidationDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Required Fields')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(filled: true, fillColor: kCard, hintText: 'Enter name'),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Name is required';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Valid form!')));
                  }
                },
                child: const Text('Validate'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
""")

add_lesson("module-04-forms-and-validation", "lesson-16-email-and-password-validation", "Email and Password Validation", "16", "Ensure an email has an '@' symbol and a password is long enough.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const ValidationDemo(),
    );
  }
}

class ValidationDemo extends StatefulWidget {
  const ValidationDemo({super.key});
  @override
  State<ValidationDemo> createState() => _ValidationDemoState();
}

class _ValidationDemoState extends State<ValidationDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complex Validation')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(filled: true, fillColor: kCard, hintText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Email is required';
                  if (!value.contains('@')) return 'Enter a valid email';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(filled: true, fillColor: kCard, hintText: 'Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Password is required';
                  if (value.length < 6) return 'Password must be 6+ chars';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Valid form!')));
                  }
                },
                child: const Text('Validate'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
""")

add_lesson("module-04-forms-and-validation", "lesson-17-dropdowns-checkboxes-and-switches", "Dropdowns, Checkboxes, and Switches", "17", "Use Dropdowns and toggles for specialized forms.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const TogglesDemo(),
    );
  }
}

class TogglesDemo extends StatefulWidget {
  const TogglesDemo({super.key});
  @override
  State<TogglesDemo> createState() => _TogglesDemoState();
}

class _TogglesDemoState extends State<TogglesDemo> {
  String? _selected;
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toggles')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DropdownButtonFormField<String>(
            value: _selected,
            dropdownColor: kCard,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(filled: true, fillColor: kCard),
            hint: const Text('Select a course', style: TextStyle(color: Colors.white54)),
            items: ['Flutter', 'Dart', 'Firebase'].map((String val) {
              return DropdownMenuItem(value: val, child: Text(val));
            }).toList(),
            onChanged: (v) => setState(() => _selected = v),
          ),
          const SizedBox(height: 16),
          CheckboxListTile(
            title: const Text('Accept terms', style: TextStyle(color: Colors.white)),
            value: _check,
            activeColor: kAccent,
            onChanged: (v) => setState(() => _check = v!),
          ),
        ],
      ),
    );
  }
}
""")

add_lesson("module-04-forms-and-validation", "lesson-18-showing-form-errors-clearly", "Showing Form Errors Clearly", "18", "Ensure your error messages are visible and well styled.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const ErrorDemo(),
    );
  }
}

class ErrorDemo extends StatefulWidget {
  const ErrorDemo({super.key});
  @override
  State<ErrorDemo> createState() => _ErrorDemoState();
}

class _ErrorDemoState extends State<ErrorDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Errors')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true, fillColor: kCard, hintText: 'Required Field',
                  errorStyle: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
                validator: (value) => (value == null || value.isEmpty) ? 'Please fill this in!' : null,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
                onPressed: () => _formKey.currentState!.validate(),
                child: const Text('Validate'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
""")

# M5
add_lesson("module-05-real-form-projects", "lesson-19-login-form-screen", "Login Form Screen", "19", "Combine text fields, validation, and styling into a clean login flow.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kBg, foregroundColor: Colors.white, elevation: 0)),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome Back', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
              const SizedBox(height: 32),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(filled: true, fillColor: kCard, hintText: 'Email', hintStyle: const TextStyle(color: Colors.white54), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(filled: true, fillColor: kCard, hintText: 'Password', hintStyle: const TextStyle(color: Colors.white54), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Logging in...')));
                    }
                  },
                  child: const Text('Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
""")

add_lesson("module-05-real-form-projects", "lesson-20-signup-form-screen", "Signup Form Screen", "20", "Build a signup form with confirm password validation.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg),
      home: const SignupScreen(),
    );
  }
}

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Create Account', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                const SizedBox(height: 32),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(filled: true, fillColor: kCard, hintText: 'Name', hintStyle: const TextStyle(color: Colors.white54), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passCtrl,
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(filled: true, fillColor: kCard, hintText: 'Password', hintStyle: const TextStyle(color: Colors.white54), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(filled: true, fillColor: kCard, hintText: 'Confirm Password', hintStyle: const TextStyle(color: Colors.white54), border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                  validator: (v) {
                    if (v!.isEmpty) return 'Required';
                    if (v != _passCtrl.text) return 'Passwords do not match';
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Signing up...')));
                      }
                    },
                    child: const Text('Sign Up', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
""")

add_lesson("module-05-real-form-projects", "lesson-21-edit-profile-form", "Edit Profile Form", "21", "Build a form designed to update existing user data.", """import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const EditProfile(),
    );
  }
}

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const CircleAvatar(radius: 40, backgroundColor: kAccent, child: Icon(Icons.person, size: 40, color: kBg)),
              const SizedBox(height: 24),
              TextFormField(
                initialValue: 'Jane Doe',
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(filled: true, fillColor: kCard, labelText: 'Full Name', labelStyle: TextStyle(color: Colors.white54)),
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: 'jane@example.com',
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(filled: true, fillColor: kCard, labelText: 'Email', labelStyle: TextStyle(color: Colors.white54)),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: kGreen, foregroundColor: kBg),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Profile Updated!')));
                  },
                  child: const Text('Save Changes'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
""")

add_lesson("module-05-real-form-projects", "lesson-22-final-project-multi-screen-form-app", "Final Project: Multi Screen Form App", "22", "Put everything together: navigation, forms, validation, and layout.", files[f"{base_dir}/projects/multi-screen-form-app/lib/main.dart"])
files[f"{base_dir}/module-05-real-form-projects/lesson-22-final-project-multi-screen-form-app/README.md"] = files[f"{base_dir}/module-05-real-form-projects/lesson-22-final-project-multi-screen-form-app/README.md"].replace("../../README.md", "../../README.md")

for path, content in files.items():
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w") as f:
        f.write(content)

print(f"Generated {len(files)} files successfully.")
