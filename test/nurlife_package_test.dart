import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nurlife_package/nurlife_package.dart';

void main() {
  testWidgets('NurlifeWidget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: NurlifeWidget(text: 'Test Text'),
      ),
    ));

    // Arka plan renginin kontrolü
    final backgroundFinder = find.byType(Container);
    expect(backgroundFinder, findsOneWidget);
    final backgroundContainer = tester.widget<Container>(backgroundFinder);
    expect(backgroundContainer.decoration, BoxDecoration(color: Colors.blue));

    // İçerik metnin kontrolü
    final textFinder = find.text('Test Text');
    expect(textFinder, findsOneWidget);
    final textWidget = tester.widget<Text>(textFinder);
    expect(textWidget.style!.color, Colors.white);
    expect(textWidget.style!.fontSize, 12.0);
    expect(textWidget.style!.fontWeight, FontWeight.bold);
  });
}
