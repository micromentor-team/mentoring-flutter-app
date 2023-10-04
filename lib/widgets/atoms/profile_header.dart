import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:provider/provider.dart';

import '../../providers/models/scaffold_model.dart';

class ProfileHeader extends StatelessWidget {
  final String? avatarUrl;
  final String profileMessage;

  const ProfileHeader({
    Key? key,
    this.avatarUrl,
    required this.profileMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    var backgroundImage = avatarUrl != null
        ? NetworkImage(avatarUrl!) as ImageProvider<Object>
        : const AssetImage(Assets.blankAvatar);

    return Padding(
      padding: const EdgeInsets.fromLTRB(
          Insets.paddingLarge, Insets.paddingLarge, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(right: Insets.paddingSmall),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(Radii.roundedRectRadiusSmall),
                child: Image(
                  image: backgroundImage,
                  width: Insets.paddingExtraLarge,
                  height: Insets.paddingExtraLarge,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 14,
            fit: FlexFit.tight,
            child: Text(
              profileMessage,
              textAlign: TextAlign.start,
              softWrap: true,
              style: theme.textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                Provider.of<ScaffoldModel>(
                  context,
                  listen: false,
                ).setTestHomeScaffold();
                Scaffold.of(context).openDrawer();
              },
              child: Icon(
                Icons.more_vert,
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
