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
        i < min(Limits.homeInvitationsListMaxSize, receivedInvitations.length);
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
      selector: (_, inboxModel) => inboxModel.unseenPendingReceivedInvitations,
      shouldRebuild: (oldValue, newValue) =>
          !(const DeepCollectionEquality.unordered()
              .equals(oldValue, newValue)) ||
          _inboxModel.receivedInvitationsState != AsyncState.loading,
      builder: (context, unseenPendingReceivedInvitations, _) {
        return AppUtility.widgetForAsyncState(
          state: _inboxModel.receivedInvitationsState,
          onReady: () {
            if (unseenPendingReceivedInvitations?.isEmpty ?? true) {
              return const SizedBox(width: 0, height: 0);
            }
            final ThemeData theme = Theme.of(context);
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
                              _l10n.homeInvitationSectionTitle,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: theme.colorScheme.onSurface,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: Insets.paddingSmall),
                            NotificationBubble(
                              notifications:
                                  unseenPendingReceivedInvitations!.length,
                            )
                          ],
                        ),
                        if (unseenPendingReceivedInvitations.length >
                            Limits.homeInvitationsListMaxSize)
                          InkWell(
                            onTap: () => context.push(
                              Routes.inboxInvitesReceived.path,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(
                                  Insets.paddingExtraSmall),
                              child: Text(
                                _l10n.listSeeAll,
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                            ),
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
                        children: _createInvitationList(
                          unseenPendingReceivedInvitations,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
