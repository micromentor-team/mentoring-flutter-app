import { faker } from "@faker-js/faker";

import * as constants from "./constants";

// users

export function generateUser(groups?: any[]) {
    var mockFirstName = faker.person.firstName();
    var mockLastName = faker.person.lastName();
    var mockFullName = `${mockFirstName} ${mockLastName}`;
    const mockUserHandle = mockFirstName.toLowerCase().charAt(0) + mockLastName.toLowerCase();
    const mockEmail = `${mockUserHandle}@${faker.internet.domainName()}`;
    const mockProfileCompletionPercentage = generateUserProfileCompletionPercentage();
    const mockCountryOfResidence = faker.helpers.arrayElement(constants.countries);
    const mockCountryOfOrigin = faker.helpers.arrayElement(constants.countries);
    const user: any = {
        __typename: "User",
        id: faker.string.alphanumeric({length: 24}),
        firstName: mockFirstName,
        lastName: mockLastName,
        fullName: mockFullName,
        email: mockEmail,
        userHandle: mockUserHandle,
        offersHelp: groups?.some(g => g.ident === "mentors") ?? false,
        seeksHelp: groups?.some(g => g.ident === "mentees") ?? false,
        websites: faker.helpers.arrayElements([generateWebsite(), generateWebsite()],{min: 0, max: 2}),
        preferredLanguage: faker.helpers.arrayElement(constants.languages),
        spokenLanguages: faker.helpers.arrayElements(constants.languages, {min: 1, max: 4}),
        avatarUrl: faker.image.urlPicsumPhotos(),
        groupMemberships: [],
        jobTitle: faker.person.jobTitle(),
        companies: [generateCompany()],
        educationLevel: faker.helpers.arrayElement(constants.educationLevels),
        pronouns: faker.helpers.arrayElements(constants.pronouns, {min: 1, max: 3}),
        pronounsDisplay: faker.helpers.arrayElement(constants.pronouns).translatedValue,
        businessExperiences: faker.helpers.arrayElements(
            [generateBusinessExperience(), generateBusinessExperience(), generateBusinessExperience()],
            {min: 1, max: 3},
        ),
        academicExperiences: faker.helpers.arrayElements(
            [generateAcademicExperience(), generateAcademicExperience(), generateAcademicExperience()],
            {min: 1, max: 3},
        ),
        cityOfResidence: faker.location.city(),
        regionOfResidence: faker.location.state(),
        countryOfResidenceTextId: mockCountryOfResidence.textId,
        countryOfResidence: mockCountryOfResidence,
        cityOfOrigin: faker.location.city(),
        regionOfOrigin: faker.location.state(),
        countryOfOriginTextId: mockCountryOfOrigin.textId,
        countryOfOrigin: mockCountryOfOrigin,
        updatedAt: faker.date.recent(),
        groupIds: [],
        profileCompletionPercentage: mockProfileCompletionPercentage,
    }
    if (groups) {
        user.groupMemberships = groups.map(g => generateGroupMembership(user, g));
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
    // TODO: copy logic from backend (once defined) to rely on other field values
    return Math.floor(Math.random() * 100);
}

export function generateAcademicExperience() {
    const startDate = faker.date.past({years: 10});
    return {
        __typename: "AcademicExperience",
        institutionName: "University of " + faker.location.city(),
        degreeType: faker.helpers.arrayElement(constants.educationLevels).translatedValue,
        fieldOfStudy: faker.person.jobArea(),
        startDate: startDate,
        endDate: faker.date.between({from: startDate, to: Date.now()}),
    }
}

export function generateBusinessExperience() {
    const startDate = faker.date.past({years: 15});
    return {
        __typename: "BusinessExperience",
        businessName: faker.company.name(),
        state: faker.location.state(),
        city: faker.location.city(),
        country: faker.location.country(),
        jobTitle: faker.person.jobTitle(),
        startDate: startDate,
        endDate: faker.date.between({from: startDate, to: Date.now()}),
    }
}

export function generateCompany() {
    const companyStage = faker.helpers.arrayElement(constants.companyStages);
    const companyType = faker.helpers.arrayElement(constants.companyTypes);
    return {
        __typename: "Company",
        id: faker.string.alphanumeric({ length: 24 }),
        name: faker.company.name(),
        description: faker.lorem.sentence(),
        foundedAt: faker.date.past(),
        companyTypeTextId: companyType.textId,
        companyType: companyType,
        companyStageTextId: companyStage.textId,
        companyStage: companyStage,
        industries: faker.helpers.arrayElements(constants.industries, {min: 1, max: 3}).map((e) => e.translatedValue),
        websites: [generateWebsite()],
    }
}

export function generateWebsite() {
    return {
        __typename: "LabeledStringValue",
        id: faker.string.alphanumeric({ length: 24 }),
        value: faker.internet.url(),
        label: faker.helpers.arrayElement(constants.websiteTypes),
    }
}

export function generateUserSearch(userSearchInput: any, users: any) {
    const filterSeeksHelp = userSearchInput.filter.seeksHelp == "isTrue";
    const filterOffersHelp = userSearchInput.filter.offersHelp == "isTrue";
    const searchResults = users.filter(
        (e: any) => (e.seeksHelp && filterSeeksHelp) || (e.offersHelp && filterOffersHelp)
    );
    return {
        __typename: "UserSearch",
        id: faker.string.alphanumeric({ length: 24 }),
        topFoundUsers: searchResults,
        runInfos: [
            {
                __typename: "UserSearchRunInfo",
                finishedAt: faker.date.recent(),
                matchCount: searchResults.length,
            },
        ],
    }
}

// groups and group memberships

export function generateGroup(mentorGroup?: boolean, menteeGroup?: boolean) {
    const name = faker.lorem.words(2);
    const group = {
        __typename: "Group",
        id: faker.string.alphanumeric({ length: 24 }),
        name: name,
        ident: faker.lorem.words(1),
        slug: name.toLowerCase().replace(/\s/g, '-'),
        embedded: false,
    }

    if (mentorGroup) {
        group.ident = group.slug = "mentors";
        group.name = "Mentors";
        group.embedded = true;
    }

    if (menteeGroup) {
        group.ident = group.slug = "mentees";
        group.name = "Mentees";
        group.embedded = true;
    }

    return group;
}

// generate mentee and mentor groups
export function generateCoreGroups() {
    return [
        generateGroup(true, false),
        generateGroup(false, true),
    ]
}

export function generateGroupMembership(user: any, group: any) {
    const membership: any = {
        __typename: "GroupMembership",
        id: faker.string.alphanumeric({ length: 24 }),
        groupId: group.id,
        groupIdent: group.ident,
        userId: user.id,
        roles: ["admin"],
        createdAt: faker.date.recent(),
        updatedAt: faker.date.recent(),
    }

    if (membership.groupIdent === "mentors") {
        membership.__typename = "MentorsGroupMembership";
        membership.expertises = faker.helpers.arrayElements(constants.expertises, 3);
        membership.industries = faker.helpers.arrayElements(constants.industries, 3);
        membership.endorsements = faker.number.int(5);
        membership.expectationsForMentees = faker.lorem.paragraph();
    }
    if (membership.groupIdent === "mentees") {
        membership.__typename = "MenteesGroupMembership";
        membership.soughtExpertises = faker.helpers.arrayElements(constants.expertises, 3);
        membership.industry = faker.helpers.arrayElement(constants.industries);
        membership.reasonsForStartingBusiness = faker.lorem.paragraph();
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
        isArchivedForMe: false,
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
    channel: any,
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
        channel: channel,
        channelId: channel.id,
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

export function generateChannelInboxItemInvitation(channelInvitation: any) {
    return {
        __typename: "ChannelInboxItemInvitation",
        channelId: channelInvitation.channel?.id,
        createdAt: channelInvitation.createdAt,
        createdBy: channelInvitation.sender.id,
        id: channelInvitation.id,
        messageText: channelInvitation.messageText,
        status: channelInvitation.status,
    }
}

export function generateChannelInboxItemMessage(sender: any, message: any) {
    return {
        __typename: "ChannelInboxItemMessage",
        channelId: message.channelId,
        id: message.id,
        messageText: message.messageText,
        senderFullName: sender.fullName,
        createdBy: sender.id,
    }
}

export function generateChannelInvitation(sender: any, recipient: any, messageText?: string, declined?: boolean, accepted?: boolean) {
    let status: string;
    let channel: any | null = null;
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
        messageText: messageText ?? faker.lorem.sentence(),
        createdBy: sender.id,
        createdAt: faker.date.recent(),
        recipientId: recipient.id,
        recipient: recipient,
        senderId: sender.id,
        sender: sender,
        status: status,
        readByRecipientAt: null,
    }
}
