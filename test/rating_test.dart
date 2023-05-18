import 'package:mm_flutter_app/widgets/molecules/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Rating test', (WidgetTester tester) async {
    await tester.pumpWidget( const  MaterialApp(
      home: Scaffold(body: Rating(),),
    ));
    final icon = find.byIcon(Icons.star);
    expect(icon, findsOneWidget);
    // expect(icon, findsNWidgets(5));
  });
}


