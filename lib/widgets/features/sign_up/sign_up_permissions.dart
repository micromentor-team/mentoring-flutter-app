import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/models/user_registration_model.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:provider/provider.dart';

class SignupPermissionsScreen extends StatefulWidget {
  const SignupPermissionsScreen({super.key});

  @override
  State<SignupPermissionsScreen> createState() =>
      _SignupPermissionsScreenState();
}

class _SignupPermissionsScreenState extends State<SignupPermissionsScreen> {
  late final UserRegistrationModel _registrationModel;
  bool _notificationsEnabled = true;
  bool _updatesEnabled = true;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
  }

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
      body: Column(
        children: [
          Row(
            children: [
              Switch(
                thumbIcon: thumbIcon,
                value: _notificationsEnabled,
                onChanged: (val) {
                  setState(() {
                    _notificationsEnabled = val;
                  });
                },
              ),
              const SizedBox(
                width: Insets.paddingSmall,
              ),
              Expanded(
                child: Text(
                  l10n.pushNotificationsEnabled,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: theme.colorScheme.outline),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          Row(
            children: [
              Switch(
                  thumbIcon: thumbIcon,
                  value: _updatesEnabled,
                  onChanged: (val) {
                    setState(() {
                      _updatesEnabled = val;
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
                ),
              ),
            ],
          ),
        ],
      ),
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.previous,
        rightButtonText: l10n.next,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: () {
          _registrationModel.appUserSettingsInput.pushNotificationEnabled =
              _notificationsEnabled;
          _registrationModel.appUserSettingsInput.receivedUpdatesEnabled =
              _updatesEnabled;
          context.push(Routes.signupGuidelines.path);
        },
      ),
    );
  }
}
