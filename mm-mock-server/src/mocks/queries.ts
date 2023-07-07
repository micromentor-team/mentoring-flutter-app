import { faker } from "@faker-js/faker";
import { MockServerState } from "./util/state";
import * as generators from "./util/generators";

export function mockQueries(serverState: MockServerState) {
    return {
        findChannelById: () => {
            return generators.generateChannel([serverState.loggedInUser, serverState.otherUsers[0]]);
        },
        findChannelMessages: () => {
            return [
                generators.generateChannelMessage(serverState.loggedInUser, true),
                generators.generateChannelMessage(serverState.otherUsers[0], false),
            ]
        },
        findChannelsForUser: () => {
            return [
                generators.generateChannel([serverState.loggedInUser, serverState.otherUsers[0]]),
            ]
        },
        findUsers: () => {
            return serverState.otherUsers.concat([serverState.loggedInUser]);
        },
        getAuthenticatedUser: () => {
            if (!serverState.loggedIn) {
                return null;
            }
            return serverState.loggedInUser;
        },
        myInbox: () => {
            var mockChannelId = faker.string.alphanumeric({length: 24});
            var mockInvitations = [
                generators.generateChannelInboxItemInvitation(faker.string.alphanumeric({length: 24}), serverState.otherUsers[0], true, false),
                generators.generateChannelInboxItemInvitation(faker.string.alphanumeric({length: 24}), serverState.otherUsers[1], false, false),
                generators.generateChannelInboxItemInvitation(faker.string.alphanumeric({length: 24}), serverState.otherUsers[2], false, true),
                generators.generateChannelInboxItemInvitation(faker.string.alphanumeric({length: 24}), serverState.otherUsers[3], false, false),
            ];
            return {
                __typename: "UserInbox",
                channels: {
                    __typename: "ChannelInbox",
                    invitations: mockInvitations,
                    pendingInvitations: [
                        mockInvitations[0],
                        mockInvitations[1],
                    ],
                    unseenMessages: [
                        generators.generateChannelInboxItemMessage(mockChannelId, serverState.loggedInUser),
                        generators.generateChannelInboxItemMessage(mockChannelId, serverState.otherUsers[0]),
                    ],
                }
            }
        },
    }
}