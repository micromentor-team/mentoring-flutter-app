import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mm_flutter_app/widgets/shared/loading.dart';

void main() {
  testWidgets('loading test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Loading(),
        ),
      ),
    );
    final widget = find.byType(CircularProgressIndicator);
    expect(widget, findsOneWidget);
  });
}
