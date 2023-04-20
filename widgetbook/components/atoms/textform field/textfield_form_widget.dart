import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mm_flutter_app/widgets/screens/signIn/textFormFieldWidget.dart';

Widget textFormFieldWidget({label,obscureText}) {
  return TextFormFieldWidget(label: label,obscureText: obscureText,onPressed: (){},textController: null,);
}
