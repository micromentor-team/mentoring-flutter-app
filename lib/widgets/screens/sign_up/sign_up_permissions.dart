import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

class SignUpPermissions extends StatefulWidget {
  const SignUpPermissions({super.key});

  @override
  State<SignUpPermissions> createState() => _SignUpPermissionsState();
}

class _SignUpPermissionsState extends State<SignUpPermissions> {
  bool check1 = true;
  bool check2 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
        progress: SignUpProgress.one,
        title: l10n.howCanWeGetInTouch,
        body: Column(children: [
          Row(children: [
            Switch(
                thumbIcon: thumbIcon,
                value: check1,
                onChanged: (val) {
                  setState(() {
                    check1 = val;
                  });
                }),
            const SizedBox(
              width: Insets.paddingSmall,
            ),
            Expanded(
                child: Text(
              l10n.pushNotificationsEnabled,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
            )),
          ]),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          Row(children: [
            Switch(
                thumbIcon: thumbIcon,
                value: check2,
                onChanged: (val) {
                  setState(() {
                    check2 = val;
                  });
                }),
            const SizedBox(
              width: Insets.paddingSmall,
            ),
            Expanded(
                child: Text(
              l10n.recieveUpdates,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline),
            )),
          ]),
        ]),
        bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.signupGuidelines.path);
          },
        ));
  }
}
