import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/user_search_bar.dart';

import 'entrepreneurs.dart';
import 'mentors.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<StatefulWidget> createState() => _Explore();
}

class _Explore extends State<Explore> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(Insets.widgetSmallInset),
      child: Column(
        children: [
          UserSearchBar(
            hintText: l10n.homeSearchHint,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () => setState(() => index = 0),
                child: Text(
                  locale.mentors,
                  textScaleFactor: 2.0,
                  style: TextStyle(
                      fontWeight:
                          (index == 0) ? FontWeight.bold : FontWeight.normal),
                ),
              ),
              TextButton(
                onPressed: () => setState(() => index = 1),
                child: Text(
                  locale.entrepeneurs,
                  textScaleFactor: 2.0,
                  style: TextStyle(
                      fontWeight:
                          (index == 1) ? FontWeight.bold : FontWeight.normal),
                ),
              ),
            ],
          ),
          Expanded(
              child: (index == 0) ? const Mentors() : const Entrepreneurs()),
        ],
      ),
    );
  }
}
