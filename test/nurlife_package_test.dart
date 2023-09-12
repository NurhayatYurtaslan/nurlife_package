import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:your_package_name/heart_animation.dart';

void main() {
  testWidgets('HeartAnimation widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: HeartAnimation(),
          ),
        ),
      ),
    );

    // HeartAnimation widget'ının yüklenip yüklenmediğini kontrol edin
    expect(find.byType(HeartAnimation), findsOneWidget);

    // HeartAnimation widget'ının doğru boyutlara sahip olup olmadığını kontrol edin
    expect(tester.getSize(find.byType(HeartAnimation)), const Size(100, 100));

    // HeartAnimation widget'ının doğru renge sahip olup olmadığını kontrol edin
    final iconFinder = find.byIcon(Icons.favorite);
    final iconWidget = tester.widget<Icon>(iconFinder);
    expect(iconWidget.color, Colors.red);

    // Animasyonun başlatıldığını kontrol edin
    final animationController = tester.state<HeartAnimationState>(
      find.byType(HeartAnimation),
    )._animationController;
    expect(animationController.isAnimating, true);

    // 2 saniye bekleyin ve animasyonun tamamlanıp tamamlanmadığını kontrol edin
    await tester.pump(const Duration(seconds: 2));
    expect(animationController.isCompleted, true);
  });
}
