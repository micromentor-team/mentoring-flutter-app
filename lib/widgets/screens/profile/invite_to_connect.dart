import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/__generated/schema/operations_user.graphql.dart';
import 'package:mm_flutter_app/providers/base/operation_result.dart';
import 'package:mm_flutter_app/providers/invitations_provider.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';
import 'package:mm_flutter_app/utilities/utility.dart';
import 'package:mm_flutter_app/widgets/atoms/skill_chip.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/user_provider.dart';

class InviteToConnect extends StatefulWidget {
  final String userId;

  const InviteToConnect({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  State<InviteToConnect> createState() => _InviteToConnectState();
}

class _InviteToConnectState extends State<InviteToConnect>
    with NavigationMixin<InviteToConnect> {
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
              _l10n.inviteMessageTips,
              style: theme.textTheme.titleMedium,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(Insets.paddingSmall),
              child: Text(
                _l10n.inviteMessageTipsContent,
                style: theme.textTheme.bodyMedium,
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
            final List<SkillChip> expertises;
            if (user.offersHelp) {
              expertises = user.groupMemberships
                  .firstWhere((e) => e.groupIdent == GroupIdent.mentors)
                  .maybeWhen(
                      mentorsGroupMembership: (g) => g.expertises
                          .map((e) => SkillChip(skill: e.translatedValue!))
                          .toList(),
                      orElse: () => []);
            } else {
              expertises = user.groupMemberships
                  .firstWhere((e) => e.groupIdent == GroupIdent.mentees)
                  .maybeWhen(
                      menteesGroupMembership: (g) => g.soughtExpertises
                          .map((e) => SkillChip(skill: e.translatedValue!))
                          .toList(),
                      orElse: () => []);
            }
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Text(_l10n.inviteToConnect),
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
                              isRecommended: false,
                              userId: user.id,
                              userType: userType,
                              avatarUrl: user.avatarUrl,
                              fullName: user.fullName!,
                              location: location,
                              skills: expertises,
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
  late final GoRouter _router;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _invitationsProvider = Provider.of<InvitationsProvider>(
      context,
      listen: false,
    );
    _router = GoRouter.of(context);
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    final String defaultText = widget.currentUserType == UserType.mentor
        ? l10n.inviteDefaultMessageToMentor
        : l10n.inviteDefaultMessageToEntrepreneur;

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
              l10n.inviteCustomizeMessagePrompt,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.paddingSmall),
            child: TextField(
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.outline,
              ),
              controller: _textEditingController..text = defaultText,
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: 5,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: theme.colorScheme.primary),
                    borderRadius:
                        BorderRadius.circular(Radii.roundedRectRadiusMedium)),
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Radii.roundedRectRadiusMedium)),
                hintText: l10n.inviteMessagePlaceholder,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Dimensions.bigButtonSize,
                  backgroundColor: theme.colorScheme.surface,
                  textStyle: theme.textTheme.labelLarge,
                ),
                onPressed: () {
                  _textEditingController.clear();
                },
                child: Text(
                  l10n.clear,
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
                  _router.pushReplacement(
                    '${Routes.inboxInvitesSent.path}/${createdInvitation.id}',
                  );
                },
                child: Text(
                  l10n.send,
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
