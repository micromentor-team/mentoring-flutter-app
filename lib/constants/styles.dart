part of 'constants.dart';

class Styles {
  const Styles._private();
  static const TextStyle sectionHeader = TextStyle(
    color: Palette.kTextHighEmphasis,
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );
  static const TextStyle cardTitle = TextStyle(
    color: Palette.kTextHighEmphasis,
    fontWeight: FontWeight.w900,
    fontSize: 14.0,
  );
  static const TextStyle cardSubtitle = TextStyle(
    color: Palette.kTextMediumEmphasis,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
  );
  static const TextStyle mentorCardTitle = TextStyle(
    color: Palette.kTextHighEmphasis,
    fontWeight: FontWeight.w900,
    fontSize: 12.0,
  );
  static const TextStyle mentorCardSubtitle = TextStyle(
    color: Palette.kTextMediumEmphasis,
    fontWeight: FontWeight.w500,
    fontSize: 12.0,
  );
  static const TextStyle profileHeader = TextStyle(
    color: Palette.kTextHighEmphasis,
    fontSize: 24.0,
    overflow: TextOverflow.ellipsis,
  );
  static const TextStyle smallTextButton = TextStyle(
    fontSize: 12.0,
    color: Colors.white,
  );
}
