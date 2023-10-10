import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/features/inbox/components/inbox_invitation_tile.dart';
import 'package:provider/provider.dart';

import '../../../../providers/invitations_provider.dart';
import '../../../../providers/models/inbox_model.dart';
import '../../../shared/notification_bubble.dart';

class InvitationSection extends StatefulWidget {
  static const maxTilesToShow = 3;
  final AuthenticatedUser authenticatedUser;
  const InvitationSection({
    Key? key,
    required this.authenticatedUser,
  }) : super(key: key);

  @override
  State<InvitationSection> createState() => _InvitationSectionState();
}

class _InvitationSectionState extends State<InvitationSection> {
  late final InboxModel _inboxModel;
  late AppLocalizations _l10n;

  @override
  void initState() {
    super.initState();
    _inboxModel = Provider.of<InboxModel>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _l10n = AppLocalizations.of(context)!;
  }

  InboxInvitationTile _createInvitationTile(
    BuildContext context,
    ReceivedChannelInvitation receivedInvitation,
  ) {
    return InboxInvitationTile(
      userName: receivedInvitation.sender.fullName ?? '',
      userJobTitle: receivedInvitation.sender.jobTitle ?? '',
      invitationStatus: receivedInvitation.status,
      avatarUrl: receivedInvitation.sender.avatarUrl,
      buttonOnPressed: () => context.push(
        '${Routes.inboxInvitesReceived.path}/${receivedInvitation.id}',
      ),
    );
  }

  List<Widget> _createInvitationList(
    List<ReceivedChannelInvitation> receivedInvitations,
  ) {
    List<Widget> invitationWidgets = [];
    for (int i = 0;
        i < min(InvitationSection.maxTilesToShow, receivedInvitations.length);
        i++) {
      invitationWidgets.add(
        _createInvitationTile(context, receivedInvitations[i]),
      );
    }
    return invitationWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Selector<InboxModel, List<ReceivedChannelInvitation>?>(
      selector: (_, inboxModel) => inboxModel.pendingReceivedInvitations,
      shouldRebuild: (oldValue, newValue) =>
          !(const DeepCollectionEquality.unordered()
              .equals(oldValue, newValue)) ||
          _inboxModel.receivedInvitationsState != AsyncState.loading,
      builder: (context, pendingReceivedInvitations, _) {
        return AppUtility.widgetForAsyncState(
          state: _inboxModel.receivedInvitationsState,
          onReady: () {
            if (pendingReceivedInvitations?.isEmpty ?? true) {
              return const SizedBox(width: 0, height: 0);
            }
            return SectionTile(
              title: _l10n.homeInvitationSectionTitle,
              seeAllOnPressed: () =>
                  context.push(Routes.inboxInvitesReceived.path),
              child: _createInvitationList(
                pendingReceivedInvitations!,
              ),
            );
          },
        );
      },
    );
  }
}

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
    return Padding(
      padding: const EdgeInsets.only(top: Insets.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Insets.paddingExtraSmall,
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
      ),
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
