import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'notification_bubble.dart';

class SectionTile extends StatefulWidget {
  final String title;
  final List<Widget> child;
  final void Function()? seeAllOnPressed;

  const SectionTile({
    Key? key,
    required this.title,
    required this.child,
    this.seeAllOnPressed,
  }) : super(key: key);

  @override
  State<SectionTile> createState() => _SectionTileState();
}

class _SectionTileState extends State<SectionTile> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final numOfInvites = widget.child.length;
    bool isExpanded = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Insets.paddingSmall,
            horizontal: AppEdgeInsets.paddingCompact,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Row(
                children: [
                  Text(
                    widget.title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Insets.paddingExtraSmall),
                    child: NotificationBubble(
                      notifications: numOfInvites,
                      enlarge: false,
                    ),
                  )
                ],
              ),
              if (widget.seeAllOnPressed != null && isExpanded == false)
                _SectionExpandToggle(
                  onPressed: () => {
                    widget.seeAllOnPressed!(),
                    setState(() => isExpanded = true),
                  },
                  text: l10n.listSeeAll,
                ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: Insets.paddingSmall,
          ),
          child: Center(
            child: Column(
              children: widget.child,
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionExpandToggle extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const _SectionExpandToggle({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(Insets.paddingExtraSmall),
        child: Text(
          text,
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
