const String kFindChannelMessages = """
  query Q (\$filter: ChannelMessageListFilter) {
    findChannelMessages(filter: \$filter) {
      id
      createdBy
      channelId
      messageText
      createdAt
      replyToMessageId
      deletedBy
      updatedAt
      deletedAt
      editedAt
      statuses {
        seenAt
      }    
    }  
  }
""";

const String kCreateChannelMessage = """
  mutation M (\$input: ChannelMessageInput!) {
    createChannelMessage(input: \$input) {
      id
      createdBy
      channelId
      messageText
      createdAt
      replyToMessageId
      deletedBy
      updatedAt
      deletedAt
      editedAt
      statuses {
        seenAt
      }   
    }
  }
""";

const String kUpdateChannelMessage = """
  mutation M (\$input: ChannelMessageInput!) {
    updateChannelMessage(input: \$input)
  }
""";

const String kUnseenMessages = """
  query Q {
    myInbox {
      channels {
        unseenMessages {
          channelId
          id
          messageText
          senderFullName
          createdBy
        }
      }
    }
  }
""";

const String kMarkMessagesAsSeenByMe = """
  mutation M (\$channelId: String!) {
    markChannelMessagesAsSeenByMe(channelId: \$channelId)
  }
""";

const String kDeleteChannelMessage = """
  mutation M (\$deletePhysically: Boolean!, \$channelMessageId: String!) {
    deleteChannelMessage(deletePhysically: \$deletePhysically, channelMessageId: \$channelMessageId)
  }
""";

const String kChannelUpdatedSubscription = """
  subscription S (\$objectId: ID!) {
    objectChanged(objectId: \$objectId) {
      objectId
      messageType
      modelType
      ownerUserId
    }
  }
""";
