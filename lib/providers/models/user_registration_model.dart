import 'package:mm_flutter_app/constants/app_constants.dart';

class UserRegistrationModel {
  SignUpUserInput _signUpUserInput = SignUpUserInput();
  UpdateUserInput _updateUserInput = UpdateUserInput();

  SignUpUserInput get signUpUserInput => _signUpUserInput;
  UpdateUserInput get updateUserInput => _updateUserInput;

  void clear() {
    _signUpUserInput = SignUpUserInput();
    _updateUserInput = UpdateUserInput();
  }
}

class SignUpUserInput {
  String? email;
  String? password;
}

class UpdateUserInput {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  int? birthYear;
  String? genderTextId;
  String? regionOfResidence;
  String? cityOfResidence;
  String? countryOfResidence;
  String? preferredLanguageTextId;
  List<String>? spokenLanguagesTextIds;
  String? avatarUrl;
  List<String>? pronounsTextIds;
  String? companyName;
  UserType? userType;

  // Entrepreneur
  String? companyStageTextId;
  List<String>? soughtExpertisesTextIds;
  String? companyWebsite;
  String? menteeIndustryTextId;

  // Mentor
  List<String>? expertisesTextIds;
  String? jobTitle;
  List<String>? mentorIndustriesTextIds;
  List<String>? mentoringPreferences;
  bool? mentorInternationally;
}
