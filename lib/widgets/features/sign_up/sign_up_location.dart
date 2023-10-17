import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_bottom_buttons.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/features/sign_up/components/sign_up_template.dart';
import 'package:mm_flutter_app/widgets/shared/text_form_field_widget.dart';
import 'package:provider/provider.dart';

import '../../../providers/models/user_registration_model.dart';

class SignupLocationScreen extends StatefulWidget {
  const SignupLocationScreen({super.key});

  @override
  State<SignupLocationScreen> createState() => _SignupLocationScreenState();
}

class _SignupLocationScreenState extends State<SignupLocationScreen> {
  late final UserRegistrationModel _registrationModel;
  String? _location;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
  }

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
        text: l10n.signupFooterVisible,
      ),
      bottomButtons: SignUpBottomButtons(
        leftButtonText: l10n.actionPrevious,
        rightButtonText: l10n.actionNext,
        leftOnPress: () {
          context.pop();
        },
        rightOnPress: _location?.isNotEmpty ?? false
            ? () {
                // TODO - also set region and country
                _registrationModel.updateUserInput.cityOfResidence = _location;
                context.push(Routes.signupLanguages.path);
              }
            : null,
      ),
    );
  }
}
