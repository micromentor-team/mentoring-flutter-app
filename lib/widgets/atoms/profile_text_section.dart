import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class ProfileTextSection extends StatelessWidget {
  const ProfileTextSection({Key? key}) : super(key: key);

  List<Widget> profileSections() {
    //TODO(guptarupal): Call backend instead of using hardcoded mock data.
    return [
      _createProfileSection('Bio',
          'Hi, I am Rupal, the founder and CEO of Rupal ka Kitchen, a home-grown food delivery service in Jaipur, India.'),
      _createProfileSection('Venture',
          'I started my company, Rupal ka Kitchen, in 2015 with a mission to provide fresh, healthy, and affordable meals to busy professionals and families. Today, Rupal ka Kitchen is one of the most popular food delivery services in Jaipur, with over 10,000 customers.'),
      _createProfileSection('Mentorship Preferences',
          'My biggest challenges are building my business up such that I can grow sustainably over the next year.'),
    ];
  }

  Column _createProfileSection(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Insets.widgetLargeInset),
          child: Text(
            title,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(Insets.widgetLargeInset, 0,
              Insets.widgetLargeInset, Insets.widgetLargeInset),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Radii.buttonRadius * 3),
              child: SizedBox(
                width: double.infinity,
                child: ColoredBox(
                  color: ColorSchemes.light.tertiaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.widgetLargeInset),
                    child: Text(description),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> profileSection = profileSections();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: profileSection,
    );
  }
}
