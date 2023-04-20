const String kGetConnections = """
  query connections {
    connections {
      id
      userId
      connectedToUserId
      displayName
      userHandle
      photo
      createTime
    }
  }""";
