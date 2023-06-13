import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/widgets/screens/home/users_list.dart';

class Mentors extends StatefulWidget {
  const Mentors({super.key});

  @override
  State<StatefulWidget> createState() => _Mentors();
}

class _Mentors extends State<Mentors> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    _searchController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    // TODO: Implement filter logic
                  },
                  child: Text(locale.india),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Implement filter logic
                  },
                  child: Text(locale.marketing),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Implement filter logic
                  },
                  child: Text(locale.online),
                ),
              ],
            ),
            const Spacer(),
            OutlinedButton(
              onPressed: () {
                // TODO: Implement filter logic
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(locale.filters, textScaleFactor: 1.4),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Center(
          child: TextFormField(
            controller: _searchController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.all(5),
              hintText: locale.searchHint,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          ),
          height: 80.0,
          width: double.infinity,
          child: Column(
            children: [
              Row(children: [
                const SizedBox(width: 10),
                Text(locale.quickMatchDesc),
                const Spacer(),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: OutlinedButton(
                  onPressed: () {
                    // TODO: Implement quick match functionality
                  },
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(locale.quickMatch, textScaleFactor: 1.4),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              Users(_searchController.text),
            ]),
          ),
        ),
      ],
    );
  }
}
