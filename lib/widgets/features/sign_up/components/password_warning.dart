import 'package:flutter/material.dart';
class PasswordWarning extends StatelessWidget {
  const PasswordWarning({super.key,required this.warning,required this.warningMessage});
  final String warningMessage;
  final bool warning;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Icon(warning?Icons.error:Icons.check,size: 20,color: warning?Colors.red:null,),
      const SizedBox(width: 10,),
      Text(warningMessage,style: TextStyle(color: warning?Colors.red:null),)
    ],);
  }
}
