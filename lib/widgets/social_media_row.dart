import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _socialButton(context, Icons.camera_alt, 'Instagram'),
          _socialButton(context, Icons.business, 'LinkedIn'),
          _socialButton(context, Icons.code, 'GitHub'),
        ],
      ),
    );
  }

  Widget _socialButton(BuildContext context, IconData icon, String name) {
    return IconButton(
      tooltip: name,
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$name dipilih')),
      ),
      icon: Icon(icon, size: 30),
    );
  }
}
