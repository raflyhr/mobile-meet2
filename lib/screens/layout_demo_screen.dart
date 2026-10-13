import 'package:flutter/material.dart';

class LayoutDemoScreen extends StatelessWidget {
  const LayoutDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo Expanded & Flexible')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Expanded mengisi ruang. Flexible boleh menyusut.'),
            const SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.indigo,
                      alignment: Alignment.center,
                      child: const Text('Expanded 2',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.orange,
                      alignment: Alignment.center,
                      child: const Text('Flexible 1'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Latihan 3 selesai: Expanded memakai flex 2, Flexible memakai flex 1.',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
