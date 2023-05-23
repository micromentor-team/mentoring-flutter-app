import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mm_flutter_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end test', () {
    testWidgets('Tap on the sign in button', (tester) async {
      app.main();
      Finder drawerFinder = find.byType(Drawer);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('registerButton')));
      await tester.pumpAndSettle();
      await tester.enterText(
          find.widgetWithText(TextFormField, "First Name"), 'Johan');
      await tester.pump();
      await Future.delayed(
        const Duration(seconds: 2),
      );
      await tester.enterText(
          find.widgetWithText(TextFormField, "Last Name"), 'Tension');
      await tester.pump();
      await Future.delayed(
        const Duration(seconds: 2),
      );
      await tester.enterText(
          find.widgetWithText(TextFormField, "Email address"), 'abc@gmail.com');
      await tester.pump();
      await Future.delayed(
        const Duration(seconds: 2),
      );
      await tester.enterText(
          find.widgetWithText(TextFormField, "Password"), '123456');
      await Future.delayed(
        const Duration(seconds: 2),
      );
      await tester.pumpAndSettle();
      await Future.delayed(
        const Duration(seconds: 2),
      );
      await tester.tap(
        find.widgetWithText(ElevatedButton, 'Sign Up'),
      );
      await tester.pumpAndSettle();
      await Future.delayed(
        const Duration(seconds: 2),
      );
      expect(find.text('Start a Conversation'), findsOneWidget);
      await tester.pumpAndSettle();
      await Future.delayed(
        const Duration(seconds: 2),
      );
      Finder menuIconFinder = find.byIcon(Icons.menu);
      await tester.tap(menuIconFinder);
      await tester.pumpAndSettle();
      await tester.tap(drawerFinder);
      await tester.pump();
      await Future.delayed(
        const Duration(seconds: 2),
      );
      await tester.tap(find.widgetWithText(ListTile, 'Sign Out'));
      await tester.pumpAndSettle();
      await Future.delayed(
        const Duration(seconds: 2),
      );
      await tester.tap(
        find.byKey(
          const Key('yesSignOut'),
        ),
      );
      await tester.pumpAndSettle();
      await Future.delayed(
        const Duration(seconds: 5),
      );
    });
  });
}
