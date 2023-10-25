import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/scaffold_model.dart';

class ProfileHeader extends StatelessWidget {
  final String? avatarUrl;
  final String profileMessage;

  const ProfileHeader({
    super.key,
    this.avatarUrl,
    required this.profileMessage,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    var backgroundImage = avatarUrl != null
        ? NetworkImage(avatarUrl!) as ImageProvider<Object>
        : const AssetImage(Assets.blankAvatar);

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(
        Insets.paddingMedium,
        Insets.paddingLarge,
        Insets.paddingSmall,
        0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
            child: Image(
              image: backgroundImage,
              width: 32,
              height: 32,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: Insets.paddingMedium),
          Expanded(
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
          const SizedBox(width: Insets.paddingMedium),
          IconButton(
            onPressed: () {
              Provider.of<ScaffoldModel>(
                context,
                listen: false,
              ).setTestHomeScaffold();
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.more_vert,
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
