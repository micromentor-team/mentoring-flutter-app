import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../__generated/schema/schema.graphql.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import '../../../../utilities/navigation_mixin.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/edit_template.dart';

class EditCurrentLocationScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditCurrentLocationScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditCurrentLocationScreen> createState() =>
      _EditCurrentLocationScreenState();
}

class _EditCurrentLocationScreenState extends State<EditCurrentLocationScreen>
    with NavigationMixin<EditCurrentLocationScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _textEditingController;
  String? _currentLocation;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _textEditingController = TextEditingController(
      text: widget.userData.cityOfResidence, //TODO - Use region and country too
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
      title: l10n.profileEditSectionAboutCurrentLocationTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          prefixIcon: const Icon(Icons.search),
          label: l10n.profileEditSectionAboutCurrentLocationInputLabel,
          hint: l10n.profileEditSectionAboutCurrentLocationInputHint,
          textController: _textEditingController,
          onChanged: (value) {
            setState(() {
              _currentLocation = value;
            });
          },
        ),
      ),
      editUserProfile: () => _userProvider.updateUserData(
        input: Input$UserInput(
          id: widget.userData.id,
          cityOfResidence: _currentLocation, //TODO - Use region and country too
        ),
      ),
    );
  }
}
