import { faker } from "@faker-js/faker";

export function generateUser() {
    var mockFirstName = faker.person.firstName();
    var mockLastName = faker.person.lastName();
    var mockFullName = `${mockFirstName} ${mockLastName}`;
    var mockUserHandle = mockFirstName.toLowerCase().charAt(0) + mockLastName.toLowerCase();
    var mockEmail = `${mockUserHandle}@${faker.internet.domainName()}`;
    return {
        __typename: "User",
        id: faker.string.alphanumeric({length: 24}),
        firstName: mockFirstName,
        lastName: mockLastName,
        fullName: mockFullName,
        userHandle: mockUserHandle,
        email: mockEmail,
        avatarUrl: null,
    }
}

export function generateUserAuthResponse(userId: string) {
    return {
        __typename: "UserAuthResponse",
        authToken: "auth:"+faker.string.alphanumeric({length: 64}),
        authTokenExpiresAt: faker.date.future(),
        deviceId: faker.string.hexadecimal({length: 24}),
        deviceUuid: faker.string.uuid(),
        userId: userId,
    }
}

export function generateChannel(channelParticipants: any[]) {
    return {
        __typename: "Channel",
        id: faker.string.alphanumeric({length: 24}),
        name: null,
        userIds: [
            channelParticipants[0].id,
            channelParticipants[1].id,
        ],
        createdBy: channelParticipants[0].id,
        createdAt: faker.date.recent(),
        participants: [
            {
                __typename: "ChannelParticipant",
                user: channelParticipants[0],
            },
            {
                __typename: "ChannelParticipant",
                user: channelParticipants[1],
            },
        ]
    }
}

export function generateChannelMessage(sender: any, seen: boolean) {
    var statuses: object[] | null;
    if (seen) {
        statuses = [
            {
                __typename: "ChannelMessageStatus",
                seenAt: faker.date.recent(),
            }
        ]
    } else {
        statuses = null;
    }
    return {
        __typename: "ChannelMessage",
        id: faker.string.alphanumeric({length: 24}),
        createdBy: sender.id,
        channelId: faker.string.alphanumeric({length: 24}),
        messageText: faker.lorem.sentence(),
        createdAt: faker.date.past({years: 1}),
        replyToMessageId: null,
        deletedBy: null,
        updatedAt: faker.date.recent(),
        deletedAt: null,
        editedAt: null,
        statuses: statuses,
    }
}

export function generateChannelInboxItemMessage(channelId: string, sender: any) {
    return {
        __typename: "ChannelInboxItemMessage",
        channelId: channelId,
        id: sender.id,
        messageText: faker.lorem.sentence(),
        senderFullName: sender.fullName,
        createdBy: sender.id,
    }
}

export function generateUserProfileCompletionPercentage() {
    // Returns a random integer between 0 and 100
    return  Math.floor(Math.random() * 100); 
}


export function generateUserLastUpdateTime() {
    // Returns a random date time from one year before to now
    return faker.date.past(); 
}


export function generateChannelInvitation(sender: any, recipient: any, declined?: boolean, accepted?: boolean) {
    var status: string;
    var channel: object | null = null;
    if (accepted) {
        status = "accepted";
        channel = generateChannel([sender, recipient])
    }
    else if (declined)
        status = "declined";
    else
        status = "created";

    return {
        __typename: "ChannelInvitation",
        id: faker.string.alphanumeric({length: 24}),
        channelName: faker.lorem.words(2),
        channel: channel,
        channelTopic: faker.lorem.sentence(),
        messageText: faker.lorem.sentence(),
        createdBy: sender.id,
        createdAt: faker.date.recent(),
        recipientId: recipient.id,
        recipient: recipient,
        senderId: sender.id,
        sender: sender,
        status: status,
    }
}