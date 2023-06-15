import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mm_flutter_app/widgets/molecules/search_container.dart';

void main() {
  testWidgets(
    'Search container',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SearchContainer(
              onChanged: (str) {},
            ),
          ),
        ),
      );
      final text = find.byType(TextField);
      expect(text, findsOneWidget);
    },
  );
}
