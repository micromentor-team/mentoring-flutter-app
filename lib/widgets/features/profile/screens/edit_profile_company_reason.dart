import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../../__generated/schema/operations_user.graphql.dart';
import '../../../../__generated/schema/schema.graphql.dart';
import '../../../../constants/constants.dart';
import '../../../../services/graphql/providers/user_provider.dart';
import '../../../../utilities/navigation_mixin.dart';
import '../../../shared/text_form_field_widget.dart';
import '../components/edit_template.dart';

class EditCompanyReasonScreen extends StatefulWidget {
  final UserDetailedProfile userData;

  const EditCompanyReasonScreen({
    super.key,
    required this.userData,
  });

  @override
  State<EditCompanyReasonScreen> createState() =>
      _EditCompanyReasonScreenState();
}

class _EditCompanyReasonScreenState extends State<EditCompanyReasonScreen>
    with NavigationMixin<EditCompanyReasonScreen> {
  late final UserProvider _userProvider;
  late final TextEditingController _textEditingController;
  late final String _menteeGroupMembershipId;
  String? _companyReason;

  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    final maybeMenteeGroupMembership = widget.userData.groupMemberships
        .where((g) => g.groupIdent == GroupIdent.mentees.name)
        .firstOrNull
        ?.maybeWhen(menteesGroupMembership: (g) => g, orElse: () => null);
    _menteeGroupMembershipId = maybeMenteeGroupMembership!.id;
    _textEditingController = TextEditingController(
      text: maybeMenteeGroupMembership.reasonsForStartingBusiness,
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
      title: l10n.profileEditSectionBusinessReasonTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: Form(
        child: TextFormFieldWidget(
          hint: l10n.profileEditSectionBusinessReasonInputHint,
          textController: _textEditingController,
          maxLength: 1000,
          maxLines: 6,
          onChanged: (value) {
            setState(() {
              _companyReason = value;
            });
          },
        ),
      ),
      editUserProfile: () => _userProvider.updateMenteesGroupMembership(
        input: Input$MenteesGroupMembershipInput(
          id: _menteeGroupMembershipId,
          reasonsForStartingBusiness: _companyReason,
        ),
      ),
    );
  }
}
