import 'package:flutter/material.dart';
// import 'package:mm_flutter_app/themes/styles.dart';

class SocialChip extends StatelessWidget {
  final String socialApp;
  final Icon socialAppIcon;
  final String socialAppLink;

  const SocialChip({
    Key? key,
    required this.socialApp,
    required this.socialAppIcon,
    required this.socialAppLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: [
        ElevatedButton(
          onPressed: () {
            //TODO(guptarupal@): add functionality to redirect this to the link
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: const Color(0x99000000), // <-- Button color
          ),
          child: socialAppIcon,
        ),
      ],
    );
  }
}
