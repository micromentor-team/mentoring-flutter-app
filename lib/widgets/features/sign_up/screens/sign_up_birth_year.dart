import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/user_registration_model.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/sign_up_template.dart';

class SignupBirthYearScreen extends StatefulWidget {
  const SignupBirthYearScreen({super.key});

  @override
  State<SignupBirthYearScreen> createState() => _SignupBirthYearScreenState();
}

class _SignupBirthYearScreenState extends State<SignupBirthYearScreen> {
  final _formKey = GlobalKey<FormState>();
  late final UserRegistrationModel _registrationModel;
  late final TextEditingController _yearController;

  @override
  void initState() {
    super.initState();
    _registrationModel = Provider.of<UserRegistrationModel>(
      context,
      listen: false,
    );
    _yearController = TextEditingController(
      text: _registrationModel.updateUserInput.birthYear?.toString(),
    );
  }

  @override
  void dispose() {
    _yearController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.one,
      title: l10n.signupBirthTitle,
      subtitle: l10n.signupBirthSubtitle,
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            TextFormFieldWidget(
              label: l10n.signupBirthInputLabel,
              hint: l10n.signupBirthInputHint,
              keyboardType: TextInputType.phone,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              suffixIcon: IconButton(
                icon: const Icon(Icons.today),
                onPressed: () {},
              ),
              textController: _yearController,
              onChanged: (_) => setState(() {}),
            ),
          ],
        ),
      ),
      isNextEnabled: _yearController.text.isNotEmpty,
      onNextPressed: () {
        if (_formKey.currentState!.validate()) {
          _registrationModel.updateUserInput.birthYear = int.parse(
            _yearController.text,
          );
          context.push(Routes.signupLocation.path);
        }
      },
    );
  }
}
