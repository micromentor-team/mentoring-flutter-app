import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mm_flutter_app/widgets/atoms/tune_icon.dart';

void main() {
  testWidgets('Find filter icon', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: TuneIcon(),
        ),
      ),
    );
    final tuneIcon = find.byIcon(Icons.tune);
    expect(tuneIcon, findsOneWidget);

    // await tester.tap(tune_icon);
    // await Future.delayed(Duration(seconds: 3));
    //
    // await tester.pumpAndSettle();
    // await Future.delayed(Duration(seconds: 5));
    //
    // final cancel_icon = find.byIcon(Icons.cancel);
    // expect(tune_icon, findsOneWidget);

    // await tester.tap(cancel_icon);
    // await tester.pump();
    // await Future.delayed(Duration(seconds: 5));
  });
}
