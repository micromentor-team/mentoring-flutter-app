const String kSignUpUser = """
  mutation M (\$input: UserSignUpInput!) {
    signUpUser(input: \$input) {
      userId
      deviceId
      authToken
    }
  }
""";

const String kSignInUser = """
  mutation M (\$input: UserSignInInput!) {
    signInUser(input: \$input) {
      userId
      deviceId
      authToken
    }
  }
""";

const String kSignOutUser = """
  mutation M {
    signMeOut
  }
""";

const String kDeleteUser = """
  mutation M (\$userId: String!, \$deletePhysically: Boolean!) {
    deleteUser(userId: \$userId, deletePhysically: \$deletePhysically)
  }
""";

const String kUpdateUser = """
  mutation M (\$input: UserInput!) {
    updateUser(input: \$input)
  }
""";

const String kGetAuthenticatedUser = """
  query Q {
    getAuthenticatedUser {
      id
      email
      firstName
      fullName
      avatarUrl
      cityOfResidence
      userHandle
    }
  }
""";

const String kGetAllUsers = """
  query Q(\$filter: UserListFilter) {
    findUsers(filter: \$filter){
      id
      email
      firstName
      fullName
      avatarUrl
      userHandle
      cityOfResidence
    }
  }
""";
