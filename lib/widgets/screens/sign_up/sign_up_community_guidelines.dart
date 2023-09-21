import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

class BulletPointText extends StatelessWidget {
  final int indentLevel;
  final String text;
  final TextStyle? textStyle;

  const BulletPointText(
      {super.key,
      required this.indentLevel,
      required this.text,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    double indentation = Insets.paddingMedium * indentLevel;
    return Padding(
        padding: EdgeInsets.only(left: indentation),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("• ", style: textStyle),
              Expanded(child: Text(text, style: textStyle))
            ]));
  }
}

class SignUpGuidelines extends StatelessWidget {
  const SignUpGuidelines({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SignUpTemplate(
        progress: SignUpProgress.one,
        title: l10n.ourCommunityGuidelines,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            l10n.guidelinesTextTitle,
            style: theme.textTheme.bodyLarge!
                .copyWith(color: theme.colorScheme.outline),
          ),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          Text(
            l10n.guidelinesTextContent1,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.outline),
          ),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          BulletPointText(
              indentLevel: 1,
              text: l10n.guidelinesTextList1,
              textStyle: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline)),
          BulletPointText(
              indentLevel: 2,
              text: l10n.guidelinesTextList1_1,
              textStyle: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.outline,
                  fontWeight: FontWeight.bold)),
          BulletPointText(
              indentLevel: 2,
              text: l10n.guidelinesTextList1_2,
              textStyle: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.outline,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          BulletPointText(
              indentLevel: 1,
              text: l10n.guidelinesTextList2,
              textStyle: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.outline)),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          const SizedBox(
            height: Insets.paddingSmall,
          ),
          Text(
            l10n.guidelinesSignature,
            style: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.outline),
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: theme.colorScheme.outline),
                text: l10n.guidelinesTextContent2_1),
            TextSpan(
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.primary,
                  decoration: TextDecoration.underline,
                ),
                text: l10n.here,
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    _launchUrl(Uri.parse(
                        'https://www.micromentor.org/code-of-conduct/'));
                  }),
            TextSpan(
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: theme.colorScheme.outline),
                text: l10n.guidelinesTextContent2_2),
          ])),
        ]),
        bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.iagree,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.entrepreneurOrMentor.path);
          },
        ));
  }
}
