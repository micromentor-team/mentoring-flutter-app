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
    var backgroundImage = avatarUrl != null
        ? NetworkImage(avatarUrl!) as ImageProvider<Object>
        : const AssetImage(Assets.blankAvatar);

    return Padding(
      padding: const EdgeInsets.all(Insets.paddingExtraLarge),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
            child: Image(
              image: backgroundImage,
              width: Insets.paddingExtraLarge,
              height: Insets.paddingExtraLarge,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Insets.paddingSmall),
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
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
