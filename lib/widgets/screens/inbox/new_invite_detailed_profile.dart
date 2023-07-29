import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/router.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/scaffold_model.dart';

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
                topLeft: Radius.zero,
                topRight: Radius.circular(Radii.roundedRectRadiusMedium),
                bottomLeft: Radius.circular(Radii.roundedRectRadiusMedium),
                bottomRight: Radius.circular(Radii.roundedRectRadiusMedium)),
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

  void _refreshScaffold() {
    final ScaffoldModel scaffoldModel = Provider.of<ScaffoldModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scaffoldModel.setInviteReceivedDetailScaffold(context);
    });
  }

  @override
  void didPush() {
    super.didPush();
    _refreshScaffold();
  }

  @override
  void didPopNext() {
    super.didPopNext();
    _refreshScaffold();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    return SafeArea(
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
    );
  }
}
