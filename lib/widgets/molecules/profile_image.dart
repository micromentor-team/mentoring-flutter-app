import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
          radius: 40,
          child: Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/03/04/22/35/avatar-659651_960_720.png'))),
    );
  }
}
