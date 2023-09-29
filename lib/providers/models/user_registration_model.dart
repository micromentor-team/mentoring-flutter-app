import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../utilities/errors/crash_handler.dart';
import '../../utilities/errors/exceptions.dart';
import '../base/operation_result.dart';
import '../user_provider.dart';

class UserRegistrationModel {
  SignUpUserInput _signUpUserInput = SignUpUserInput();
  UpdateUserInput _updateUserInput = UpdateUserInput();
  AppUserSettingsInput _appUserSettingsInput = AppUserSettingsInput();

  SignUpUserInput get signUpUserInput => _signUpUserInput;
  UpdateUserInput get updateUserInput => _updateUserInput;
  AppUserSettingsInput get appUserSettingsInput => _appUserSettingsInput;

  void clear() {
    _signUpUserInput = SignUpUserInput();
    _updateUserInput = UpdateUserInput();
    _appUserSettingsInput = AppUserSettingsInput();
  }

  Future<bool> updateUser(UserProvider userProvider) async {
    final userUpdateResult = await userProvider.updateUserData(
      input: updateUserInput.toUserInput(),
    );
    if (userUpdateResult.gqlQueryResult.hasException) {
      return false;
    }
    // Poll user until update is live, which is determined by group memberships.
    final AuthenticatedUser? updatedUser =
        await CrashHandler.retryOnException<AuthenticatedUser?>(
      () async {
        final result = await userProvider.getAuthenticatedUser();
        if (result.response!.groupMemberships.isEmpty) {
          throw RetryException(
            message: 'Waiting for user to update...',
          );
        }
        return result.response!;
      },
      onFailOperation: () => null,
      logFailures: false,
    );
    if (updatedUser == null) {
      return false;
    }
    final OperationResult? groupUpdateResult;
    switch (updateUserInput.userType) {
      case UserType.entrepreneur:
        groupUpdateResult = await userProvider.updateMenteesGroupMembership(
          input: updateUserInput.toMenteeInput(
            menteeGroupMembershipId: updatedUser.groupMemberships
                .firstWhere((e) => e.groupIdent == GroupIdent.mentees.name)
                .id,
          ),
        );
        break;
      case UserType.mentor:
        groupUpdateResult = await userProvider.updateMentorsGroupMembership(
          input: updateUserInput.toMentorInput(
            mentorGroupMembershipId: updatedUser.groupMemberships
                .firstWhere((e) => e.groupIdent == GroupIdent.mentors.name)
                .id,
          ),
        );
        break;
      default:
        groupUpdateResult = null;
        break;
    }
    if (groupUpdateResult?.gqlQueryResult.hasException ?? false) {
      return false;
    }
    return true;
  }
}

class SignUpUserInput {
  String? email;
  String? password;
}

class UpdateUserInput {
  String? id;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  int? birthYear;
  String? genderTextId;
  String? regionOfResidence;
  String? cityOfResidence;
  String? countryOfResidenceTextId;
  List<String>? preferredLanguageTextIds;
  List<String>? spokenLanguagesTextIds;
  String? avatarUrl;
  List<String>? pronounsTextIds;
  String? companyName;
  UserType? userType;

  // Entrepreneur
  String? companyStageTextId;
  String? companyWebsite;
  List<String>? menteeSoughtExpertisesTextIds;
  String? menteeReasonForStartingBusiness;
  String? menteeIndustryTextId;

  // Mentor
  String? jobTitle;
  List<String>? mentorExpertisesTextIds;
  List<String>? mentorIndustriesTextIds;
  List<String>? mentoringPreferences; // TODO add to backend
  bool? mentorInternationally; // TODO add to backend

  void clearEntrepreneurFields() {
    companyStageTextId = null;
    companyWebsite = null;
    menteeSoughtExpertisesTextIds = null;
    menteeReasonForStartingBusiness = null;
    menteeIndustryTextId = null;
  }

  void clearMentorFields() {
    jobTitle = null;
    mentorExpertisesTextIds = null;
    mentorIndustriesTextIds = null;
    mentoringPreferences = null;
    mentorInternationally = null;
  }

  Input$UserInput toUserInput() {
    return Input$UserInput(
      id: id,
      firstName: firstName,
      lastName: lastName,
      fullName: '$firstName $lastName',
      phoneNumber: phoneNumber,
      birthYear: birthYear,
      genderTextId: genderTextId,
      regionOfResidence: regionOfResidence,
      cityOfResidence: cityOfResidence,
      countryOfResidenceTextId: countryOfResidenceTextId,
      preferredLanguageTextId: preferredLanguageTextIds?.firstOrNull,
      spokenLanguagesTextIds: spokenLanguagesTextIds,
      avatarUrl: avatarUrl,
      pronounsTextIds: pronounsTextIds,
      company: Input$CompanyInput(
        name: companyName,
        companyStageTextId: companyStageTextId,
        websites: companyWebsite?.isNotEmpty ?? false
            ? [Input$LabeledStringValueInput(value: companyWebsite)]
            : null,
      ),
      seeksHelp: userType == UserType.entrepreneur,
      offersHelp: userType == UserType.mentor,
      jobTitle: jobTitle,
    );
  }

  Input$MenteesGroupMembershipInput toMenteeInput({
    required String menteeGroupMembershipId,
  }) {
    return Input$MenteesGroupMembershipInput(
      id: menteeGroupMembershipId,
      soughtExpertisesTextIds: menteeSoughtExpertisesTextIds,
      reasonsForStartingBusiness: menteeReasonForStartingBusiness,
      industryTextId: menteeIndustryTextId,
    );
  }

  Input$MentorsGroupMembershipInput toMentorInput({
    required String mentorGroupMembershipId,
  }) {
    return Input$MentorsGroupMembershipInput(
      id: mentorGroupMembershipId,
      expertisesTextIds: mentorExpertisesTextIds,
      industriesTextIds: mentorIndustriesTextIds,
    );
  }
}

class AppUserSettingsInput {
  bool? pushNotificationEnabled;
  bool? receivedUpdatesEnabled;
}
