import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/navigation_mixin.dart';
import 'package:provider/provider.dart';

import '../../../providers/user_provider.dart';
import '../../shared/text_form_field_widget.dart';
import 'components/edit_template.dart';

class EditConnectLinkedInScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditConnectLinkedInScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditConnectLinkedInScreen> createState() =>
      _EditConnectLinkedInScreenState();
}

class _EditConnectLinkedInScreenState extends State<EditConnectLinkedInScreen>
    with NavigationMixin<EditConnectLinkedInScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _textEditingController;
  String? _linkedInUrl;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _textEditingController = TextEditingController(
      text: widget.userData.websites
          ?.where((e) => e.label == WebsiteLabels.linkedin.name)
          .firstOrNull
          ?.value,
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return EditTemplate(
      title: l10n.profileEditSectionAboutLinkedInTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          label: l10n.profileEditSectionAboutLinkedInInputLabel,
          hint: l10n.profileEditSectionAboutLinkedInInputHint,
          textController: _textEditingController,
          onChanged: (value) {
            setState(() {
              _linkedInUrl = value;
            });
          },
        ),
      ),
      editUserProfile: () => _userProvider.updateUserData(
        input: Input$UserInput(
          id: widget.userData.id,
          websites: [
            Input$LabeledStringValueInput(
              label: WebsiteLabels.linkedin.name,
              value: _linkedInUrl,
            ),
          ],
        ),
      ),
    );
  }
}
