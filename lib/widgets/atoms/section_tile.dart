import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import 'notification_bubble.dart';

class SectionTile extends StatefulWidget {
  final String title;
  final List<Widget> child;
  final bool addTopDivider;
  final bool removeBottomPadding;
  final void Function()? seeAllOnPressed;
  final void Function()? seeLessOnPressed;

  const SectionTile({
    Key? key,
    required this.title,
    required this.child,
    this.addTopDivider = false,
    this.removeBottomPadding = false,
    this.seeAllOnPressed,
    this.seeLessOnPressed,
  }) : super(key: key);

  @override
  State<SectionTile> createState() => _SectionTileState();
}

class _SectionTileState extends State<SectionTile> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final numOfInvites = widget.child.length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.addTopDivider)
          const Divider(
            thickness: 1,
            height: 0,
            indent: Insets.paddingSmall,
            endIndent: Insets.paddingSmall,
          ),
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
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Insets.paddingSmall),
                    child: NotificationBubble(
                      notifications: numOfInvites,
                      enlarge: false,
                    ),
                  )
                ],
              ),
              if (widget.seeAllOnPressed != null &&
                  (!_isExpanded || widget.seeLessOnPressed == null))
                _SectionExpandToggle(
                  onPressed: () => {
                    widget.seeAllOnPressed!(),
                    setState(() => _isExpanded = true),
                  },
                  text: l10n.listSeeAll,
                ),
              if (widget.seeLessOnPressed != null &&
                  (_isExpanded || widget.seeAllOnPressed == null))
                _SectionExpandToggle(
                  onPressed: () => {
                    widget.seeLessOnPressed!(),
                    setState(() => _isExpanded = false),
                  },
                  text: l10n.listSeeLess,
                ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: widget.removeBottomPadding ? 0 : Insets.paddingMedium,
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
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
