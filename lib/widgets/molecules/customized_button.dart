import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  const CustomizedButton({Key? key,required this.text,required this.icon}) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SizedBox(
        width: 165,
        child: ElevatedButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment:
              CrossAxisAlignment.center,
              mainAxisAlignment:
              MainAxisAlignment.center,
              children:  [
                Icon(icon),
                const SizedBox(
                  width: 8,
                ),
                Text(text)
              ],
            )),
      ),
    );
  }
}
