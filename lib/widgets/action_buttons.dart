import 'package:flutter/material.dart';

import '../screens/edit_profile_screen.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton.icon(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const EditProfileScreen()),
          ),
          icon: const Icon(Icons.edit),
          label: const Text('Edit'),
        ),
        OutlinedButton.icon(
          onPressed: () => _showMessage(context, 'Profil siap dibagikan'),
          icon: const Icon(Icons.share),
          label: const Text('Bagikan'),
        ),
      ],
    );
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}
