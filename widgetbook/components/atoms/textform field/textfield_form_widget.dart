import 'package:flutter/material.dart';
import 'package:mm_flutter_app/widgets/atoms/text_form_field_widget.dart';

Widget textFormFieldWidget({label, obscureText}) {
  return TextFormFieldWidget(
    label: label,
    obscureText: obscureText,
    onPressed: () {},
    textController: null,
  );
}
