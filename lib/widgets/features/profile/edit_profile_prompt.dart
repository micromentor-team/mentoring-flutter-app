import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../../utilities/navigation_mixin.dart';
import 'components/edit_template.dart';

class EditPromptScreen extends StatefulWidget {
  const EditPromptScreen({Key? key}) : super(key: key);

  @override
  State<EditPromptScreen> createState() => _EditPromptScreenState();
}

class _EditPromptScreenState extends State<EditPromptScreen>
    with NavigationMixin<EditPromptScreen> {
  @override
  Widget build(BuildContext context) {
    if (!pageRoute.isCurrent) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return EditTemplate(
      title: l10n.profileEditSectionAboutPromptTitle,
      scaffoldBuilder: buildPageRouteScaffold,
      body: const Padding(
        padding: EdgeInsets.all(Insets.paddingMedium),
        child: Column(
          children: [
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
