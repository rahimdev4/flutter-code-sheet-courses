import 'package:flutter/material.dart';

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
