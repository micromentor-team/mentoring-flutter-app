import 'package:mm_flutter_app/widgets/molecules/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Search container', (WidgetTester tester) async {
    await tester.pumpWidget( MaterialApp(
      home: Scaffold(body: SearchContainer(onChanged: (String ) {  },),),
    ));
    final tune_icon = find.byIcon(Icons.tune_sharp);
    final account_icon = find.byIcon(Icons.account_circle);
    final text = find.byType(TextField);
    expect(tune_icon, findsOneWidget);
    expect(account_icon,findsOneWidget);
    expect(text, findsOneWidget);

  });
}


