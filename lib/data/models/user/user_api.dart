const String kSignUpUser = """
  mutation SignUpUser(\$input: UserSignUpInput!) {
    signUpUser(input: \$input) {
      userId
      deviceId
      authToken
    }
  }""";

const String kCreateUsers = """
  mutation SignUpUser(\$input: UserSignUpInput!) {
    signUpUser(input: \$input) {
      userId
    }
  }""";

const String kSignInUser = """
  mutation SignInUser(\$input: UserSignInInput!) {
    signInUser(input: \$input) {
      userId
      deviceId
      authToken
    }
  }""";

const String kGetAuthenticatedUser = """
  query getAuthenticatedUser {
    getAuthenticatedUser {
      id
      fullName
      avatarUrl
      userHandle
    }
  }""";

const String kSignOutUser = """
  mutation Mutation {
  signOutUser
}""";

const String kDeleteUser = """
  mutation DeleteUser(\$userId: String!, \$deletePhysically: Boolean!) {
    deleteUser(userId: \$userId, deletePhysically: \$deletePhysically)
  }""";

const String kGetAllUsers ="""
query FindUsers(\$filter: UserListFilter) {
  findUsers(filter: \$filter){
    id
    fullName
    avatarUrl
    userHandle
  }
}
""";

const String kGetUserById ="""
query FindUserById(\$findUserByIdId: String!) {
  findUserById(id: \$findUserByIdId) {
    fullName
    avatarUrl
  }
}
""";

const String kUpdateUser = """
mutation UpdateUser(\$input: UserInput!) {
  updateUser(input: \$input)
}
""";

const String kMultiStepAction = """
mutation CreateMultiStepAction(\$input: SidMultiStepActionInput!) {
  createMultiStepAction(input: \$input) {
    id
    userId
    authToken    
  }
}
""";
const String getSingleUserByEmail = """
query FindUsers(\$match: UserInput) {
  findUsers(match: \$match) {
    id
  }
}

""";