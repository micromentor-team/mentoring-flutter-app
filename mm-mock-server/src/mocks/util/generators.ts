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
        avatarUrl: faker.image.urlPicsumPhotos(),
        jobTitle: faker.person.jobTitle(), //TODO(MM): Implement in backend.
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

export function generateChannelInboxItemInvitation(channelId: string, sender: any,  declined?: boolean, accepted?: boolean) {
var status: string;
    if (accepted)
        status = "accepted";
    else if (declined)
        status = "declined";
    else
        status = "created";
    return {
        __typename: "ChannelInboxItemInvitation",
        channelId: channelId,
        createdAt: faker.date.recent(),
        createdBy: sender.id,
        id: faker.string.alphanumeric({length: 24}),
        messageText: faker.lorem.sentence(),
        status: status,
    }
}

export function generateChannelInboxItemMessage(channelId: string, sender: any) {

    return {
        __typename: "ChannelInboxItemMessage",
        channelId: channelId,
        id: faker.string.alphanumeric({length: 24}),
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


export function generateChannelInvitation(channelParticipants: any[], declined?: boolean, accepted?: boolean) {
    var status: object | null;
    if (declined || accepted) {
        var statusText: string;
        if (accepted)
            statusText = "accepted";
        else if (declined)
            statusText = "declined";
        else
            statusText = "created";
        status = {
                __typename: "ChannelInvitationStatus",
                status: statusText,
            }
    } else {
        status = null;
    }
    return {
        __typename: "ChannelInvitation",
        id: faker.string.alphanumeric({length: 24}),
        channelName: faker.lorem.words(2),
        channel: generateChannel(channelParticipants),
        channelTopic: faker.lorem.sentence(),
        messageText: faker.lorem.sentence(),
        createdBy: channelParticipants[0].id,
        createdAt: faker.date.recent(),
        recipientId: channelParticipants[0].id,
        recipient: channelParticipants[0],
        senderId: channelParticipants[1].id,
        sender: channelParticipants[1],
        status: status,
    }
}