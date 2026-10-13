import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key, this.imageUrl, this.radius = 60});

  final String? imageUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: imageUrl == null
          ? Icon(Icons.person, size: radius * 1.2, color: Colors.white)
          : ClipOval(
              child: Image.network(
                imageUrl!,
                width: radius * 2,
                height: radius * 2,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Icon(
                  Icons.broken_image_outlined,
                  size: radius,
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
