import 'package:bytebank/main.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should display the main imagem when the Dashboard is opended',
      (WidgetTester tester) async {
    await tester.pumpWidget(BytebankApp());
    final mainImage = find.byType(Image);
    expect(mainImage, findsOneWidget);
  });
}
