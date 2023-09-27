import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/text_form_field_widget.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';

class SignUpLocation extends StatefulWidget {
  const SignUpLocation({super.key});

  @override
  State<SignUpLocation> createState() => _SignUpLocationState();
}

class _SignUpLocationState extends State<SignUpLocation> {
  String? _location;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupLocationTitle,
      body: Form(
        //TODO - Set up with Autocomplete
        child: TextFormFieldWidget(
          prefixIcon: const Icon(Icons.search),
          label: l10n.signupLocationInputLabel,
          hint: l10n.signupLocationInputHint,
          onChanged: (value) => setState(() {
            _location = value;
          }),
        ),
      ),
      footer: SignUpIconFooter(
        icon: Icons.visibility_outlined,
        text: l10n.signUpVisibleInfoDesc,
      ),
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.previous,
        rightButtonText: l10n.next,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _location?.isNotEmpty ?? false
            ? () => context.push(Routes.signupLanguages.path)
            : null,
      ),
    );
  }
}
