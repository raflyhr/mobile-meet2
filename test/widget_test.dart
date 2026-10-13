import 'package:flutter_test/flutter_test.dart';

import 'package:profil_mahasiswa/main.dart';

void main() {
  testWidgets('profil page renders', (tester) async {
    await tester.pumpWidget(const StudentProfileApp());
    expect(find.text('Profil Mahasiswa'), findsOneWidget);
    expect(find.text('Rafly Hermansyah'), findsOneWidget);
  });
}
