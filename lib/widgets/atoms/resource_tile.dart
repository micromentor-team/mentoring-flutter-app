import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ResourceTile extends StatelessWidget {
  final Widget icon;
  final String text;
  final void Function() onPress;

  const ResourceTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: TextStyles.resourceTitle(context),
      ),
      onTap: onPress,
    );
  }
}