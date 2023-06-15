const String kGetMessages = """
  query FindChannelMessages(\$filter: ChannelMessageListFilter) {
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
}""";

const String kCreateMessage = """
  mutation CreateChannelMessage(\$input: ChannelMessageInput!) {
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
  }
}""";

const String kUpdateMessage = """
  mutation UpdateChannelMessage(\$input: ChannelMessageInput!) {
  updateChannelMessage(input: \$input)
}""";

const String kMessageUpdatedSubscription = """
  subscription messageUpdated {
    messageUpdated {
      action
      message {
        id
        userId
        channelId
        messageText
        createTime
        replyingToMessageId
        deleted
        updateTime
        deleteTime
      }
    }
  }""";

const String kUnseenMessage = """query MyInbox{
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
}""";

const String kMarkMessagesRead =
    """mutation MarkChannelMessagesAsSeenByMe(\$channelId: String!) {
  markChannelMessagesAsSeenByMe(channelId: \$channelId)
}""";

const String kDeleteMessage = """
mutation DeleteChannelMessage(\$deletePhysically: Boolean!, \$channelMessageId: String!) {
  deleteChannelMessage(deletePhysically: \$deletePhysically, channelMessageId: \$channelMessageId)
}
""";

const String kChannelUpdatedSubscription = """
   subscription ObjectChanged(\$objectId: ID!) {
    objectChanged(objectId: \$objectId) {
      objectId
      messageType
      modelType
      ownerUserId
    }
   }
""";
