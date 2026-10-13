import 'package:flutter/material.dart';

import '../widgets/action_buttons.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import 'about_screen.dart';
import 'layout_demo_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff3157d5),
        actions: [
          IconButton(
            tooltip: 'Tentang aplikasi',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AboutScreen()),
            ),
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const ProfileHeader(),
                    const SizedBox(height: 20),
                    const ProfileInfo(),
                    const SizedBox(height: 20),
                    const SocialMediaRow(),
                    const SizedBox(height: 12),
                    OutlinedButton.icon(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const LayoutDemoScreen()),
                      ),
                      icon: const Icon(Icons.view_quilt_outlined),
                      label: const Text('Buka Demo Expanded & Flexible'),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                child: const ActionButtons(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
