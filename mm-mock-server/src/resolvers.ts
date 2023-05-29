import { faker } from "@faker-js/faker";

var loggedIn = false;

export const resolvers = {
    Query: {
        findChannelById: () => {
            return {
                __typename: "Channel",
                id: faker.string.uuid(),
                name: null,
                userIds: [
                    "646c1a49b1d391c456906835",
                    "646c1a49b1d391c456906836",
                ],
                createdBy: "646c1a49b1d391c456906835",
                createdAt: faker.date.recent(),
                participants: [
                    {
                        __typename: "ChannelParticipant",
                        user: {
                            __typename: "User",
                            id: "646c1a49b1d391c456906835",
                            fullName: "Jane Doe",
                            avatarUrl: null,
                            userHandle: "janedoe",
                        }
                    },
                    {
                        __typename: "ChannelParticipant",
                        user: {
                            __typename: "User",
                            id: "646c1a49b1d391c456906836",
                            fullName: "John Doe",
                            avatarUrl: null,
                            userHandle: "johndoe",
                        }
                    },
                ]
            }
        },
        findChannelMessages: () => {
            return [
                {
                    __typename: "ChannelMessage",
                    id: faker.string.uuid(),
                    createdBy: "646c1a49b1d391c456906835",
                    channelId: faker.string.uuid(),
                    messageText: "Hello John!",
                    createdAt: faker.date.past({years: 1}),
                    replyToMessageId: null,
                    deletedBy: null,
                    updatedAt: faker.date.recent(),
                    deletedAt: null,
                    editedAt: null,
                    statuses: [
                        {
                            __typename: "ChannelMessageStatus",
                            seenAt: faker.date.recent(),
                        }
                    ]
                },
                {
                    __typename: "ChannelMessage",
                    id: faker.string.uuid(),
                    createdBy: "646c1a49b1d391c456906836",
                    channelId: faker.string.uuid(),
                    messageText: "Hello Jane!",
                    createdAt: faker.date.recent(),
                    replyToMessageId: null,
                    deletedBy: null,
                    updatedAt: faker.date.recent(),
                    deletedAt: null,
                    editedAt: null,
                    statuses: null
                }
            ]
        },
        findChannelsForUser: () => {
            return [
                {
                    __typename: "Channel",
                    id: faker.string.uuid(),
                    name: null,
                    userIds: [
                        "646c1a49b1d391c456906835",
                        "646c1a49b1d391c456906836",
                    ],
                    createdBy: "646c1a49b1d391c456906835",
                    createdAt: faker.date.recent(),
                    participants: [
                        {
                            __typename: "ChannelParticipant",
                            user: {
                                __typename: "User",
                                id: "646c1a49b1d391c456906835",
                                fullName: "Jane Doe",
                                avatarUrl: null,
                                userHandle: "janedoe",
                            }
                        },
                        {
                            __typename: "ChannelParticipant",
                            user: {
                                __typename: "User",
                                id: "646c1a49b1d391c456906836",
                                fullName: "John Doe",
                                avatarUrl: null,
                                userHandle: "johndoe",
                            }
                        },
                    ]
                }
            ]
        },
        findUsers: () => {
            return [
                {
                    __typename: "User",
                    id: "646c1a49b1d391c456906835",
                    email: "janedoe@test.com",
                    fullName: "Jane Doe",
                    avatarUrl: null,
                    userHandle: "janedoe",
                },
                {
                    __typename: "User",
                    id: "646c1a49b1d391c456906836",
                    email: "johndoe@test.com",
                    fullName: "John Doe",
                    avatarUrl: null,
                    userHandle: "johndoe",
                },
            ]
        },
        getAuthenticatedUser: () => {
            if (!loggedIn) {
                return null;
            }
            return {
                __typename: "User",
                id: "646c1a49b1d391c456906835",
                email: "janedoe@test.com",
                fullName: "Jane Doe",
                avatarUrl: null,
                userHandle: "janedoe",
            }
        },
        myInbox: () => {
            var mockChannelId = faker.string.uuid();
            return {
                __typename: "UserInbox",
                channels: {
                    __typename: "ChannelInbox",
                    unseenMessages: [
                        {
                            __typename: "ChannelInboxItemMessage",
                            channelId: mockChannelId,
                            id: "646c1a49b1d391c456906835",
                            messageText: "Hello John!",
                            senderFullName: "Jane Doe",
                            createdBy: "646c1a49b1d391c456906835",
                        },
                        {
                            __typename: "ChannelInboxItemMessage",
                            channelId: mockChannelId,
                            id: "646c1a49b1d391c456906836",
                            messageText: "Hello Jane!",
                            senderFullName: "John Doe",
                            createdBy: "646c1a49b1d391c456906836",
                        }
                    ]
                }
            }
        }
    },
    Mutation: {
        deleteUser: () => {
            loggedIn = false;
        },
        signInUser: () => {
            loggedIn = true;
        },
        signUpUser: () => {
            loggedIn = true;
        },
        signMeOut: () => {
            loggedIn = false;
            return "ok";
        }
    }
}

