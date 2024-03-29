import '../../utilities/errors/crash_handler.dart';
import '../../utilities/errors/exceptions.dart';
import '../__generated/schema/schema.graphql.dart';
import '../constants/constants.dart';
import '../services/graphql/providers/base/operation_result.dart';
import '../services/graphql/providers/user_provider.dart';

class UserRegistrationModel {
  SignUpUserInput _signUpUserInput = SignUpUserInput();
  UpdateUserInput _updateUserInput = UpdateUserInput();
  UserPreferencesInput _userPreferencesInput = UserPreferencesInput();
  bool _isNewUser = false;

  SignUpUserInput get signUpUserInput => _signUpUserInput;
  UpdateUserInput get updateUserInput => _updateUserInput;
  UserPreferencesInput get userPreferencesInput => _userPreferencesInput;
  bool get isNewUser => _isNewUser;

  void clearNewUserFlag() {
    _isNewUser = false;
  }

  void clear() {
    _signUpUserInput = SignUpUserInput();
    _updateUserInput = UpdateUserInput();
    _userPreferencesInput = UserPreferencesInput();
  }

  Future<bool> registerUser(UserProvider userProvider) async {
    return await _createUser(userProvider) && await _updateUser(userProvider);
  }

  Future<bool> _createUser(UserProvider userProvider) async {
    final signUpResult = await userProvider.signUpUser(
      email: signUpUserInput.email!,
      password: signUpUserInput.password!,
    );
    if (signUpResult.gqlQueryResult.hasException) {
      return false;
    }
    final userResult = await userProvider.getAuthenticatedUser();
    if (userResult.gqlQueryResult.hasException) {
      return false;
    }
    _updateUserInput.id = userResult.response!.id;
    return true;
  }

  Future<bool> _updateUser(UserProvider userProvider) async {
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
    _isNewUser = true;
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
  String? preferredLanguageTextId;
  UserType? userType;

  // Entrepreneur
  String? companyName;
  String? companyStageTextId;
  List<String>? menteeSoughtExpertisesTextIds;
  String? menteeReasonForStartingBusiness;

  // Mentor
  String? experienceBusinessName;
  String? experienceJobTitle;
  List<String>? mentorExpertisesTextIds;
  String? mentorReasonForMentoring; //TODO - Implement in backend

  void clearEntrepreneurFields() {
    companyName = null;
    companyStageTextId = null;
    menteeSoughtExpertisesTextIds = null;
    menteeReasonForStartingBusiness = null;
  }

  void clearMentorFields() {
    experienceBusinessName = null;
    experienceJobTitle = null;
    mentorExpertisesTextIds = null;
    mentorReasonForMentoring = null;
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
      preferredLanguageTextId: preferredLanguageTextId,
      company: companyName != null
          ? Input$CompanyInput(
              name: companyName,
              companyStageTextId: companyStageTextId,
            )
          : null,
      seeksHelp: userType == UserType.entrepreneur,
      offersHelp: userType == UserType.mentor,
      businessExperiences: experienceJobTitle != null
          ? [
              Input$BusinessExperienceInput(
                jobTitle: experienceJobTitle,
                businessName: experienceBusinessName,
              ),
            ]
          : null,
    );
  }

  Input$MenteesGroupMembershipInput toMenteeInput({
    required String menteeGroupMembershipId,
  }) {
    return Input$MenteesGroupMembershipInput(
      id: menteeGroupMembershipId,
      soughtExpertisesTextIds: menteeSoughtExpertisesTextIds,
      reasonsForStartingBusiness: menteeReasonForStartingBusiness,
    );
  }

  Input$MentorsGroupMembershipInput toMentorInput({
    required String mentorGroupMembershipId,
  }) {
    return Input$MentorsGroupMembershipInput(
      id: mentorGroupMembershipId,
      expertisesTextIds: mentorExpertisesTextIds,
    );
  }
}

class UserPreferencesInput {
  bool? enableUpdatesAndNews; //TODO - Implement in backend
}
