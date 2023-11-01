import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/sign_up_template.dart';

class SignupLocationScreen extends StatefulWidget {
  const SignupLocationScreen({super.key});

  @override
  State<SignupLocationScreen> createState() => _SignupLocationScreenState();
}

class _SignupLocationScreenState extends State<SignupLocationScreen> {
  late final UserRegistrationModel _registrationModel;
  late final TextEditingController _locationController;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    // TODO - also set region and country
    _locationController = TextEditingController(
      text: _registrationModel.updateUserInput.cityOfResidence,
    );
  }

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupLocationTitle,
      subtitle: l10n.signupLocationSubtitle,
      body: Form(
        //TODO - Set up with Autocomplete
        child: TextFormFieldWidget(
          prefixIcon: const Icon(Icons.search),
          label: l10n.signupLocationInputLabel,
          hint: l10n.signupLocationInputHint,
          textController: _locationController,
          onChanged: (_) => setState(() {}),
        ),
      ),
      isNextEnabled: _locationController.text.isNotEmpty,
      onNextPressed: () {
        // TODO - also set region and country
        _registrationModel.updateUserInput.cityOfResidence =
            _locationController.text;
        context.push(Routes.signupLanguage.path);
      },
    );
  }
}
