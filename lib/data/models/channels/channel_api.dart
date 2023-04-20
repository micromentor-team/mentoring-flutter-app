const String kGetChannelsList = """
  query FindChannels{
findChannels{
    id
    name
    createdBy
    createdAt
    description
    updatedBy
    updatedAt
    participants {
      id
    }
  }
}""";

const String kGetChannel = """
  query FindChannelsForUser(\$userId: String!) {
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
    messages {
      id
    createdBy
    channelId
    messageText
    createdAt
    replyToMessageId
    deletedBy
    updatedAt
    deletedAt
    statuses {
      seenAt
    }   
    }
  }
}""";

const String kSubscribeChannelUpdated = """
  subscription channelUpdated {
    channelUpdated {
      id
      title
      description
      createdByUserId
      createTime
      updateTime
      participantUserIds
    }
  }""";

const String kCreateChannel = """
  mutation CreateChannel(\$input: ChannelInput!) {
  createChannel(input: \$input) {
    id
    name    
    userIds
    createdBy
  }
}""";

const String kJoinChannel = """
  mutation JoinChannel(\$input: JoinChannelInput){
    joinChannel( 
      input: \$input
    ){
      id
            
      createdByUserId
      participantUserIds
      createTime
    }
  }""";

const String kDeleteChannel = """
  mutation Mutation(\$deletePhysically: Boolean!, \$channelId: String!) {
  deleteChannel(deletePhysically: \$deletePhysically, channelId: \$channelId)
}""";

const String kUpdateChannel = """
  mutation UpdateChannel(\$input: UpdateChannelInput){
    updateChannel(input: \$input){
      id
      title
      description
      createdByUserId
      createTime
      updateTime
      updatedByUserId
      participantUserIds
    }
  }""";

const String kExitChannel = """
  mutation ExitChannel(\$id: String!){
    exitChannel( 
      input: { id: \$id }
    ){
      id
    }
  }""";

const String kFindChannelByChannelId =
    """query FindChannelById(\$findChannelByIdId: String!) {
  findChannelById(id: \$findChannelByIdId) {
    id
    name
    userIds
    createdBy
    createdAt  
  }
}""";

const String kAddChannelMessageEvent =
    """mutation MarkChannelMessagesAsSeenByMe(\$input: BgAddChannelMessageEventInput!) {
  addChannelMessageEvent(input: \$input)
}""";
