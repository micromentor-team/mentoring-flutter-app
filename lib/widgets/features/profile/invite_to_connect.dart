import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/shared/expertise_chip.dart';
import 'package:mm_flutter_app/widgets/shared/profile_quick_view_card.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/models/inbox_model.dart';
import '../../../providers/user_provider.dart';

class InviteToConnectScreen extends StatefulWidget {
  final String userId;

  const InviteToConnectScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  State<InviteToConnectScreen> createState() => _InviteToConnectScreenState();
}

class _InviteToConnectScreenState extends State<InviteToConnectScreen>
    with NavigationMixin<InviteToConnectScreen> {
  late final UserProvider _userProvider;
  late final Future<OperationResult<UserQuickViewProfile>> _userQuickView;
  late AppLocalizations _l10n;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!pageRoute.isCurrent) return;
    _userQuickView = _userProvider.findUserQuickViewProfile(
      userId: widget.userId,
    );
    _l10n = AppLocalizations.of(context)!;
  }

  Widget _createMessageTips(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.paddingMedium,
        vertical: Insets.paddingExtraSmall,
      ),
      child: Card(
        color: theme.colorScheme.tertiaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(Insets.paddingSmall),
          child: ListTile(
            title: Text(
              _l10n.inviteCreateMessageTipsTitle,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: theme.colorScheme.onTertiaryContainer),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(Insets.paddingSmall),
              child: Text(
                _l10n.inviteCreateMessageTipsSubtitle,
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: theme.colorScheme.onTertiaryContainer),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final ThemeData theme = Theme.of(context);
    return FutureBuilder(
      future: _userQuickView,
      builder: (context, snapshot) {
        return AppUtility.widgetForAsyncSnapshot(
          snapshot: snapshot,
          onReady: () {
            final UserQuickViewProfile user = snapshot.data!.response!;
            final UserType userType =
                user.offersHelp ? UserType.mentor : UserType.entrepreneur;
            final String location = [
              user.cityOfResidence,
              user.countryOfResidence?.translatedValue,
            ].nonNulls.join(_l10n.listSeparator);
            final List<ExpertiseChip> expertises;
            if (user.offersHelp) {
              expertises = user.groupMemberships
                  .firstWhere((e) => e.groupIdent == GroupIdent.mentors.name)
                  .maybeWhen(
                      mentorsGroupMembership: (g) => g.expertises
                          .map((e) =>
                              ExpertiseChip(expertise: e.translatedValue!))
                          .toList(),
                      orElse: () => []);
            } else {
              expertises = user.groupMemberships
                  .firstWhere((e) => e.groupIdent == GroupIdent.mentees.name)
                  .maybeWhen(
                      menteesGroupMembership: (g) => g.soughtExpertises
                          .map((e) =>
                              ExpertiseChip(expertise: e.translatedValue!))
                          .toList(),
                      orElse: () => []);
            }
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Text(
                  _l10n.inviteCreateTitle,
                ),
                centerTitle: false,
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ],
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Insets.paddingMedium,
                            vertical: Insets.paddingExtraSmall,
                          ),
                          child: createProfileCardFromInfo(
                            info: ProfileQuickViewInfo(
                              userId: user.id,
                              userType: userType,
                              avatarUrl: user.avatarUrl,
                              fullName: user.fullName!,
                              location: location,
                              expertises: expertises,
                              company: user.companies.firstOrNull?.name,
                              companyRole: user.jobTitle,
                            ),
                          ),
                        ),
                        MessageBox(
                          currentUserType: userType,
                          senderId: _userProvider.user!.id,
                          recipientId: widget.userId,
                        ),
                        _createMessageTips(theme),
                      ],
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

class MessageBox extends StatefulWidget {
  final UserType currentUserType;
  final String senderId;
  final String recipientId;
  const MessageBox({
    super.key,
    required this.currentUserType,
    required this.senderId,
    required this.recipientId,
  });

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  late final InvitationsProvider _invitationsProvider;
  late final InboxModel _inboxModel;
  late final GoRouter _router;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _invitationsProvider = Provider.of<InvitationsProvider>(
      context,
      listen: false,
    );
    _inboxModel = Provider.of<InboxModel>(context, listen: false);
    _router = GoRouter.of(context);
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    final String defaultText = widget.currentUserType == UserType.mentor
        ? l10n.inviteCreateMessageDefaultToMentor
        : l10n.inviteCreateMessageDefaultToEntrepreneur;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.paddingMedium,
        vertical: Insets.paddingExtraSmall,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              l10n.inviteCreateCustomizeMessagePrompt,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.paddingSmall),
            child: TextField(
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onBackground,
              ),
              controller: _textEditingController..text = defaultText,
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: 5,
              decoration: InputDecoration(
                filled: true,
                fillColor: theme.colorScheme.background,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: theme.colorScheme.outline),
                    borderRadius:
                        BorderRadius.circular(Radii.roundedRectRadiusMedium)),
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Radii.roundedRectRadiusMedium)),
                hintText: l10n.inviteCreateMessagePlaceholder,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Dimensions.bigButtonSize,
                  textStyle: theme.textTheme.labelLarge,
                ),
                onPressed: () {
                  _textEditingController.clear();
                },
                child: Text(
                  l10n.actionClear,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(width: Insets.paddingMedium),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Dimensions.bigButtonSize,
                  backgroundColor: theme.colorScheme.primary,
                  textStyle: theme.textTheme.labelLarge,
                ),
                onPressed: () async {
                  final createdInvitation =
                      (await _invitationsProvider.createChannelInvitation(
                    senderId: widget.senderId,
                    recipientId: widget.recipientId,
                    messageText: _textEditingController.value.text,
                  ))
                          .response!;
                  await _inboxModel.refreshPendingSentInvitations();
                  _router.pushReplacement(
                    '${Routes.inboxInvitesSent.path}/${createdInvitation.id}',
                  );
                },
                child: Text(
                  l10n.actionSend,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
