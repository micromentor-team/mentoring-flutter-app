import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/molecules/closable_tile.dart';
import 'package:mm_flutter_app/widgets/molecules/profile_quick_view_card.dart';

import '../../../constants/app_constants.dart';

class MessageBox extends StatefulWidget {
  const MessageBox({
    super.key,
  });

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.widgetMediumInset,
          vertical: Insets.widgetSmallestInset,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(l10n.inviteCustomizeMessagePrompt),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: Insets.widgetSmallInset),
              child: TextField(
                controller: _textEditingController
                  ..text = l10n.inviteDefaultMessageToMentor,
                keyboardType: TextInputType.multiline,
                minLines: 5,
                maxLines: 5,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
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
                const SizedBox(width: Insets.widgetMediumInset),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Dimensions.bigButtonSize,
                    backgroundColor: theme.colorScheme.primary,
                    textStyle: theme.textTheme.labelLarge,
                  ),
                  onPressed: () {},
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
        ));
  }
}

class InviteToConnect extends StatefulWidget {
  final List<ProfileQuickViewInfo> initialSelectedProfiles;

  const InviteToConnect({Key? key, required this.initialSelectedProfiles})
      : super(key: key);

  @override
  State<InviteToConnect> createState() => _InviteToConnectState();
}

class _InviteToConnectState extends State<InviteToConnect> {
  List<ProfileQuickViewInfo> selectedProfiles = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedProfiles = widget.initialSelectedProfiles;
    });
  }

  Widget _createMessageTips(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.widgetMediumInset,
          vertical: Insets.widgetSmallestInset,
        ),
        child: Card(
          color: theme.colorScheme.tertiaryContainer,
          child: Padding(
              padding: const EdgeInsets.all(Insets.widgetSmallInset),
              child: ListTile(
                  title: Text(
                    l10n.inviteMessageTips,
                    style: theme.textTheme.titleMedium,
                  ),
                  subtitle: Padding(
                      padding: const EdgeInsets.all(Insets.widgetSmallInset),
                      child: Text(
                        l10n.inviteMessageTipsContent,
                        style: theme.textTheme.bodyMedium,
                      )))),
        ));
  }

  Widget _createSelectedProfilesSection(BuildContext context) {
    if (selectedProfiles.length == 1) {
      return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.widgetMediumInset,
            vertical: Insets.widgetSmallestInset,
          ),
          child: createProfilCardFromInfoAndCheckbox(
              info: selectedProfiles[0], checkbox: null));
    }
    List<Widget> profileTiles = [];
    for (int i = 0; i < selectedProfiles.length; i++) {
      ProfileQuickViewInfo profileInfo = selectedProfiles[i];
      ImageProvider imageProvider = const AssetImage(Assets.blankAvatar);
      if (profileInfo.avatarUrl != null) {
        imageProvider = NetworkImage(profileInfo.avatarUrl!);
      }
      profileTiles.add(CloseableTile(
          image: imageProvider,
          title: profileInfo.fullName,
          onClose: () {
            setState(() {
              selectedProfiles.removeAt(i);
            });
          }));
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Insets.widgetSmallInset),
        child: Row(
          children: profileTiles,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(l10n.inviteToConnect),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                context.pop();
              },
            ),
          ],
        ),
        body: Column(children: [
          Expanded(
              child: ListView(children: [
            _createSelectedProfilesSection(context),
            const MessageBox(),
            _createMessageTips(context),
          ])),
        ]));
  }
}
