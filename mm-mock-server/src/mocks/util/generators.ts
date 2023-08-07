import { faker } from "@faker-js/faker";

import * as constants from "./constants";

// users

export function generateUser(groups?: any[]) {
    var mockFirstName = faker.person.firstName();
    var mockLastName = faker.person.lastName();
    var mockFullName = `${mockFirstName} ${mockLastName}`;
    var mockUserHandle = mockFirstName.toLowerCase().charAt(0) + mockLastName.toLowerCase();
    var mockEmail = `${mockUserHandle}@${faker.internet.domainName()}`;
    var mockProfileCompletionPercentage = generateUserProfileCompletionPercentage();
    const user: any = {
        __typename: "User",
        id: faker.string.alphanumeric({length: 24}),
        firstName: mockFirstName,
        lastName: mockLastName,
        fullName: mockFullName,
        userHandle: mockUserHandle,
        email: mockEmail,
        avatarUrl: faker.image.urlPicsumPhotos(),
        jobTitle: faker.person.jobTitle(),
        profileCompletionPercentage: mockProfileCompletionPercentage,
        updatedAt: faker.date.recent(),
        groupMemberships: [],
        groupIds: [],
    }
    if (groups) {
        user.groupMemberships = groups.map(generateGroupMembership);
        user.groupIds = groups.map(g => g.id);
    }
    return user;
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

export function generateUserProfileCompletionPercentage() {
    // Returns a random integer between 0 and 100
    return Math.floor(Math.random() * 100);
}

// groups and group memberships

export function generateGroup(mentorGroup?: boolean, menteeGroup?: boolean) {
    const name = faker.lorem.words(2);
    const group = {
        __typename: "Group",
        id: faker.string.alphanumeric({ length: 24 }),
        name: name,
        groupIdent: faker.lorem.words(1),
        slug: name.toLowerCase().replace(/\s/g, '-'),
        embedded: false,
    }

    if (mentorGroup) {
        group.groupIdent = group.slug = "mentors";
        group.name = "Mentors";
        group.embedded = true;
    }

    if (menteeGroup) {
        group.groupIdent = group.slug = "mentees";
        group.name = "Mentees";
        group.embedded = true;
    }

    return group;
}

export function generateCoreGroups() {
    return [
        generateGroup(true, false),
        generateGroup(false, true),
    ]
}

export function generateGroupMembership(group) {
    const membership: any = {
        __typename: "GroupMembership",
        id: faker.string.alphanumeric({ length: 24 }),
        groupId: group.id,
        groupIdent: group.ident,
        userId: faker.string.alphanumeric({ length: 24 }),
        roles: ["admin"],
        createdAt: faker.date.recent(),
        updatedAt: faker.date.recent(),
    }

    if (group.groupIdent === "mentors") {
        membership.__typename = "MentorsGroupMembership";
        membership.expertises = faker.helpers.arrayElements(constants.expertises, 2);
        membership.industries = faker.helpers.arrayElements(constants.industries, 2);
    }

    if (group.groupIdent === "mentees") {
        membership.__typename = "MenteesGroupMembership";
        membership.soughtExpertises = faker.helpers.arrayElements(constants.expertises, 2);
        membership.industry = faker.helpers.arrayElement(constants.industries);
    }

    return membership;
}

// channels, channel invitations and channel messages

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
        ],
    }
}

export function generateChannelMessage(
    text: string = faker.lorem.sentence(),
    channelId: string,
    senderUser: any,
    createdAt: Date,
    isSeen: boolean = false,
    isEdited: boolean = false,
    isDeleted: boolean = false,
    replyToMessageId: string | null = null,
) {
    var statuses: object[] | null;
    if (isSeen) {
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
        createdBy: senderUser.id,
        channelId: channelId,
        messageText: text,
        createdAt: createdAt.toISOString(),
        replyToMessageId: replyToMessageId,
        deletedBy: isDeleted ? senderUser.id : null,
        updatedAt: faker.date.recent(),
        deletedAt: isDeleted ? faker.date.recent() : null,
        editedAt: isEdited ? faker.date.recent() : null,
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

// content options

export function generateExpertise() {
    return {
        __typename: "Expertise",
        textId: faker.lorem.words(1),
        translatedValue: faker.lorem.words(1),
    }
}


