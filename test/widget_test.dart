import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nottie/main.dart';
import 'package:nottie/screen/login_screen.dart';

void main() {
  testWidgets('Insures the widget tree starts from material page', 
  (WidgetTester tester) async {
    await tester.pumpWidget(NotesApp());
    expect(find.byType(Scaffold), findsOneWidget);
  });

  testWidgets('Finds a Text Widget', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(
    home: Scaffold(
      body: Text('Sign up with email'),
    ),
  ));

  expect(find.text('Sign up with email'), findsOneWidget);
});
}
