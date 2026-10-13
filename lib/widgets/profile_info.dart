import 'package:flutter/material.dart';

import 'info_row.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            InfoRow(icon: Icons.school, label: 'S1 Informatika'),
            InfoRow(icon: Icons.email, label: 'r.hermansyah@students.amikom.ac.id'),
            InfoRow(icon: Icons.location_on, label: 'Yogyakarta, Indonesia'),
          ],
        ),
      ),
    );
  }
}
