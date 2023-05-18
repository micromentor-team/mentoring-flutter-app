import 'package:mm_flutter_app/widgets/molecules/customized_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Button test', (WidgetTester tester) async {
    await tester.pumpWidget( const  MaterialApp(
      home: Scaffold(body: CustomizedButton(icon: Icons.message,text: 'message',),),
    ));
    final tuneIcon = find.byIcon(Icons.message);
    final text = find.byType(Text);
    expect(tuneIcon, findsOneWidget);
    expect(text, findsOneWidget);
      });
}


