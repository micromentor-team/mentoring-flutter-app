import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:provider/provider.dart';

import '../../providers/models/scaffold_model.dart';

class ProfileHeader extends StatelessWidget {
  final String? avatarUrl;
  final String profileMessage;
  final int? profileCompletionPercentage;

  const ProfileHeader({
    Key? key,
    this.avatarUrl,
    required this.profileMessage,
    this.profileCompletionPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    var backgroundImage = avatarUrl != null
        ? NetworkImage(avatarUrl!) as ImageProvider<Object>
        : const AssetImage(Assets.blankAvatar);

    return Padding(
      padding: const EdgeInsets.fromLTRB(Insets.paddingExtraLarge,
          Insets.paddingExtraLarge, Insets.paddingExtraLarge, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Positioned(
                top: Insets.paddingExtraSmall,
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
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      Insets.paddingSmall + Insets.paddingExtraLarge,
                      Insets.paddingSmall,
                      Insets.paddingSmall,
                      Insets.paddingSmall),
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
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
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
