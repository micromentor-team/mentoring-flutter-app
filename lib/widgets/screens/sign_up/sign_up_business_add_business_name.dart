import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import '../../../constants/app_constants.dart';
import '../../atoms/text_form_field_widget.dart';
import 'sign_up_bottom_buttons.dart';

class SignupBusinessAddBusinessNameScreen extends StatefulWidget {
  const SignupBusinessAddBusinessNameScreen({Key? key}) : super(key: key);

  @override
  State<SignupBusinessAddBusinessNameScreen> createState() =>
      _SignupBusinessAddBusinessNameScreenState();
}

class _SignupBusinessAddBusinessNameScreenState
    extends State<SignupBusinessAddBusinessNameScreen> {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.two,
      title: l10n.whatIsTheNameOfYourBusiness,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.addWebsite.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Form(
          child: TextFormFieldWidget(
        label: l10n.businessName,
        onPressed: (value) {},
        textController: null,
      )),
    );
  }
}
