import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:practice/main.dart';

void main() {
  testWidgets('BottomNavigationBar navigation smoke test', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    // Initially on Home screen.
    expect(find.text('Home'), findsWidgets);
    expect(find.text('About'), findsWidgets);
    expect(find.text('Contact'), findsWidgets);

    // Tap About tab
    await tester.tap(find.byIcon(Icons.info));
    await tester.pumpAndSettle();
    expect(find.text('About Page'), findsWidgets);

    // Tap Contact tab
    await tester.tap(find.byIcon(Icons.contact_mail));
    await tester.pumpAndSettle();
    expect(find.text('Contact Page'), findsWidgets);
  });
}
