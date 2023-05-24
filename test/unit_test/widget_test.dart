import 'package:flutter_test/flutter_test.dart';
import 'package:mm_flutter_app/main.dart' as app;

void main() {
  testWidgets('Tap on the sign up button', (tester) async {
    app.main();
    expect(find.text('Welcome to MicroMentor!'), findsOneWidget);
  });
}
