import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../__generated/schema/schema.graphql.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import '../../../../utilities/navigation_mixin.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/edit_template.dart';

class EditOriginLocationScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditOriginLocationScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditOriginLocationScreen> createState() =>
      _EditOriginLocationScreenState();
}

class _EditOriginLocationScreenState extends State<EditOriginLocationScreen>
    with NavigationMixin<EditOriginLocationScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _textEditingController;
  String? _originLocation;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _textEditingController = TextEditingController(
      text: widget.userData.cityOfOrigin, //TODO - Use region and country too
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
      title: l10n.profileEditSectionAboutOriginLocationTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          prefixIcon: const Icon(Icons.search),
          label: l10n.profileEditSectionAboutOriginLocationInputLabel,
          hint: l10n.profileEditSectionAboutOriginLocationInputHint,
          textController: _textEditingController,
          onChanged: (value) {
            setState(() {
              _originLocation = value;
            });
          },
        ),
      ),
      editUserProfile: () => _userProvider.updateUserData(
        input: Input$UserInput(
          id: widget.userData.id,
          cityOfOrigin: _originLocation, //TODO - Use region and country too
        ),
      ),
    );
  }
}
