import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/scaffold_model.dart';
import 'package:provider/provider.dart';

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
    return Padding(
      padding: const EdgeInsets.all(Insets.paddingExtraLarge),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(Insets.paddingExtraSmall),
              child: Text(
                profileMessage,
                textAlign: TextAlign.start,
                softWrap: true,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              if (profileCompletionPercentage != null)
                SizedBox(
                  width: Radii.avatarRadiusSmall * 2,
                  height: Radii.avatarRadiusSmall * 2,
                  child: CircularProgressIndicator(
                    value: profileCompletionPercentage! / 100,
                  ),
                ),
              InkWell(
                onTap: () {
                  //TODO(m-rosario): Remove this once the real logout flow is defined by UX
                  Provider.of<ScaffoldModel>(
                    context,
                    listen: false,
                  ).setTestHomeScaffold();
                  Scaffold.of(context).openDrawer();
                },
                child: CircleAvatar(
                  radius: Radii.avatarRadiusSmall,
                  backgroundImage: avatarUrl != null
                      ? NetworkImage(avatarUrl!) as ImageProvider<Object>
                      : const AssetImage(Assets.blankAvatar),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
