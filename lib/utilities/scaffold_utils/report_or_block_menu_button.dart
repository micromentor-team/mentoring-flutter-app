import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReportOrBlockMenuButton extends StatelessWidget {
  const ReportOrBlockMenuButton({
    super.key,
    required this.l10n,
  });

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Text(l10n.blockUser),
        ),
        PopupMenuItem(
          child: Text(l10n.reportUser),
        ),
      ],
    );
  }
}
