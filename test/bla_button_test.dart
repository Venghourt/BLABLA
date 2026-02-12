import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:blabla/widgets/button/bla_button.dart';

void main() {
  Widget wrap(Widget child) {
    return MaterialApp(home: Scaffold(body: child));
  }

  testWidgets('Primary button renders correctly', (tester) async {
    await tester.pumpWidget(
      wrap(const BlaButton(label: 'Primary', variant: ButtonVariant.primary)),
    );

    await tester.pumpAndSettle();

    expect(find.text('Primary'), findsOneWidget);
  });

  testWidgets('Secondary button renders correctly', (tester) async {
    await tester.pumpWidget(
      wrap(
        const BlaButton(label: 'Secondary', variant: ButtonVariant.secondary),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Secondary'), findsOneWidget);
  });
}
