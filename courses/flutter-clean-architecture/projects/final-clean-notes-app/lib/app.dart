import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/notes/presentation/screens/notes_screen.dart';

class CleanNotesApp extends StatelessWidget {
  const CleanNotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: AppTheme.dark, home: const NotesScreen());
  }
}
