import 'package:flutter/material.dart';
import 'package:mm_flutter_app/themes/styles.dart';

class ProfileTextSection extends StatelessWidget {
  const ProfileTextSection({Key? key}) : super(key: key);

  List<Widget> _ProfileSections() {
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
          padding: const EdgeInsets.fromLTRB(36.0, 0, 36.0, 0),
          child: Text(
            title,
            style: Styles.sectionHeader,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 30.0),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: SizedBox(
                width: double.infinity,
                child: ColoredBox(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
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
    List<Widget> profileSection = _ProfileSections();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: profileSection,
    );
  }
}
