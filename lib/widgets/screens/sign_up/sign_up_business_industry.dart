import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_icon_footer.dart';
import 'package:mm_flutter_app/widgets/screens/sign_up/sign_up_template.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../../providers/content_provider.dart';
import '../../molecules/multi_select_chips.dart';
import 'sign_up_bottom_buttons.dart';

class SignupBusinessIndustryScreen extends StatefulWidget {
  const SignupBusinessIndustryScreen({Key? key}) : super(key: key);

  @override
  State<SignupBusinessIndustryScreen> createState() =>
      _SignupBusinessIndustryScreenState();
}

class _SignupBusinessIndustryScreenState
    extends State<SignupBusinessIndustryScreen> {
  late final ContentProvider _contentProvider;
  late final List<SelectChip> _industryChips;

  @override
  void initState() {
    super.initState();
    _contentProvider = Provider.of<ContentProvider>(context, listen: false);
    _industryChips = _contentProvider.industryOptions!
        .map(
          (e) => SelectChip(
            chipName: e.translatedValue!,
            textId: e.textId,
            icon: Icons.work_outline,
          ),
        )
        .toList();
    _industryChips.sort((a, b) => a.chipName.compareTo(b.chipName));
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return SignUpTemplate(
      progress: SignUpProgress.three,
      title: l10n.whatIsYourIndustry,
      bottomButtons: SignUpBottomButtons(
          leftButtonText: l10n.previous,
          rightButtonText: l10n.next,
          leftOnPress: () {
            context.pop();
          },
          rightOnPress: () {
            context.push(Routes.completedEntrepreneurSignup.path);
          }),
      footer: SignUpIconFooter(
          icon: Icons.visibility_outlined, text: l10n.signUpShownOnProfileInfo),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CreateMultiSelectChips(
            chips: _industryChips,
            maxSelection: 1,
          ),
        ],
      ),
    );
  }
}
