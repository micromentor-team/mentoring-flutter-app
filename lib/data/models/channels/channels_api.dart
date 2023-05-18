const String kFindChannelsForUser = """
  query Q (\$userId: String!) {
    findChannelsForUser(userId: \$userId){
      id
      name
      userIds
      createdBy
      createdAt
      participants {
        user {
          id
          fullName
          avatarUrl
          userHandle
        }
      }
    }
  }
""";

const String kFindChannelById = """
  query Q (\$channelId: String!) {
    findChannelById(id: \$channelId) {
      id
      name
      userIds
      createdBy
      createdAt
      participants {
        user {
          id
          fullName
          avatarUrl
          userHandle
        }
      }
    }
  }
""";

const String kCreateChannel = """
  mutation M (\$input: ChannelInput!) {
    createChannel(input: \$input) {
      id
      name    
      userIds
      createdBy
      createdAt
      participants {
        user {
          id
          fullName
          avatarUrl
          userHandle
        }
      }
    }
  }
""";

const String kDeleteChannel = """
  mutation M (\$deletePhysically: Boolean!, \$channelId: String!) {
    deleteChannel(deletePhysically: \$deletePhysically, channelId: \$channelId)
  }
""";
