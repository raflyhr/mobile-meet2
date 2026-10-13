import 'package:flutter/material.dart';

import 'screens/profile_screen.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff3157d5)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xfff5f7fb),
      ),
      home: const ProfileScreen(),
    );
  }
}
