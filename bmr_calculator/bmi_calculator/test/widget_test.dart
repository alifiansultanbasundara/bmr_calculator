import 'package:flutter_test/flutter_test.dart';
import 'package:bmr_calculator/main.dart'; // Pastikan nama package sesuai pubspec.yaml

void main() {
  testWidgets('BMR Calculator smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BMRCalculator()); // Pastikan nama class sesuai

    // Verify that our app starts correctly
    expect(find.text('BMR CALCULATOR'), findsOneWidget);
    expect(find.text('MALE'), findsOneWidget);
    expect(find.text('FEMALE'), findsOneWidget);
    expect(find.text('HEIGHT'), findsOneWidget);
    expect(find.text('WEIGHT'), findsOneWidget);
    expect(find.text('AGE'), findsOneWidget);
  });

  testWidgets('Calculate BMR test', (WidgetTester tester) async {
    await tester.pumpWidget(const BMRCalculator());

    // Tap the calculate button
    await tester.tap(find.text('CALCULATE BMR'));
    await tester.pump();

    // Verify navigation to result page
    expect(find.text('Your Result'), findsOneWidget);
  });
}