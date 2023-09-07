import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../molecules/sign_up_bottom_buttons.dart';

class MentorOrEntrepreneurScreen extends StatefulWidget {
  const MentorOrEntrepreneurScreen({Key? key}) : super(key: key);

  @override
  State<MentorOrEntrepreneurScreen> createState() =>
      _MentorOrEntrepreneurScreenState();
}

class _MentorOrEntrepreneurScreenState
    extends State<MentorOrEntrepreneurScreen> {
  UserRole? _character = UserRole.entrepreneur;
  // Note I am using hardcoded colors here because I can't use context yet
  Color _colorOne = const Color(0xFFD0BCFF);
  Color _colorTwo = const Color(0xFFE8DEF8);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Insets.paddingExtraLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const LinearProgressIndicator(value: 0.25),
              const SizedBox(height: Insets.paddingMedium),
              Text(
                l10n.roleMicroMentor,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: Insets.paddingMedium),
              Container(
                decoration: BoxDecoration(
                  color: _colorOne,
                  borderRadius:
                      BorderRadius.circular(Radii.roundedRectRadiusSmall),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Insets.paddingSmall),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Radio<UserRole>(
                          value: UserRole.entrepreneur,
                          groupValue: _character,
                          onChanged: (UserRole? value) {
                            setState(() {
                              _character = value;
                              _colorTwo = Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer;
                              _colorOne =
                                  Theme.of(context).colorScheme.inversePrimary;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 64,
                        height: 104,
                        child: Image(
                          image: AssetImage(Assets.entrepreneurIcon),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.iAmAnEntrepreneur,
                              style: theme.textTheme.titleMedium,
                            ),
                            Text(
                              l10n.entrepreneurDescription,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Insets.paddingMedium),
              Container(
                decoration: BoxDecoration(
                  color: _colorTwo,
                  borderRadius:
                      BorderRadius.circular(Radii.roundedRectRadiusSmall),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Insets.paddingSmall),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Radio<UserRole>(
                          value: UserRole.mentor,
                          groupValue: _character,
                          onChanged: (UserRole? value) {
                            setState(() {
                              _character = value;
                              _colorOne = Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer;
                              _colorTwo =
                                  Theme.of(context).colorScheme.inversePrimary;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 64,
                        height: 104,
                        child: Image(
                          image: AssetImage(Assets.mentorIcon),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.iAmAMentor,
                              style: theme.textTheme.titleMedium,
                            ),
                            Text(
                              l10n.mentorDescription,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Insets.paddingSmall),
                child: InkWell(
                  child: Text(l10n.learnMoreAboutMentoring,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () {},
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Insets.paddingExtraLarge * 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_outline, color: theme.colorScheme.outline),
                    Expanded(
                        child: Text(l10n.signUpHiddenInfoDesc,
                            softWrap: true,
                            style: theme.textTheme.bodySmall
                                ?.copyWith(color: theme.colorScheme.outline))),
                  ],
                ),
              ),
              const SignUpBottomButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

enum UserRole { mentor, entrepreneur }
