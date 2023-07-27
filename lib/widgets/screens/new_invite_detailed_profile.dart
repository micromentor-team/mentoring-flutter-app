import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:mm_flutter_app/utilities/router.dart';

class NewInviteDetailedProfile extends StatefulWidget {
  const NewInviteDetailedProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<NewInviteDetailedProfile> createState() =>
      _NewInviteDetailedProfileState();
}

class _NewInviteDetailedProfileState extends State<NewInviteDetailedProfile>
    with RouteAwareMixin<NewInviteDetailedProfile> {
  @override
  AppBar _createAppBar(
      AppLocalizations l10n, ThemeData theme, GoRouter router) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          router.push(Routes.inboxInvitesReceived);
        },
        //TODO: make the back icon press go back to the invites page
      ),
      title: Text(
        l10n.newInvite,
        style: theme.textTheme.titleLarge?.copyWith(
          color: theme.colorScheme.onPrimaryContainer,
        ),
      ),
      centerTitle: false,
      actions: [
        PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text(l10n.blockUser),
            ),
            PopupMenuItem(
              child: Text(l10n.reportUser),
            ),
          ],
        ),
      ],
    );
  }

  Widget _createCard() {
    Widget mentorCard =
        createProfilCardFromInfoAndCheckbox(info: createRegularMentorExample());
    return mentorCard;
  }

  Widget _createDateDivider(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(Insets.widgetMediumInset),
      child: Row(
        children: [
          const Expanded(child: Divider()),
          Text(
            'Today', //TO-DO: get this date from the previous screen
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.secondary,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _createMessagePopup(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(Insets.widgetLargeInset, 0,
          Insets.widgetLargeInset, Insets.widgetLargeInset),
      child: SizedBox(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.tertiaryContainer,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(
              Insets.widgetSmallInset,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      //TO-DO: get a dyanamic version of this text
                      child: Text(
                          'Hi,\n I saw your profile and I would love to chat about some of your challenges. Would you like to connect?'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //TO-DO: HAVE TO USE THE DYNAMIC VERSION OF "TIME"
                    Text(
                      '02:34 pm',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createDeclineAcceptButtons(
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
            backgroundColor: theme.colorScheme.surface,
            textStyle: theme.textTheme.labelLarge,
          ),
          onPressed: () {},
          child: Text(
            l10n.decline,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(width: Insets.widgetMediumInset),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
            backgroundColor: theme.colorScheme.primary,
            textStyle: theme.textTheme.labelLarge,
          ),
          onPressed: () {},
          child: Text(
            l10n.accept,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    final GoRouter router = GoRouter.of(context);

    return Scaffold(
      appBar: _createAppBar(l10n, theme, router),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _createCard(),
                  _createDateDivider(theme),
                  _createMessagePopup(theme),
                  _createDeclineAcceptButtons(theme, l10n),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
