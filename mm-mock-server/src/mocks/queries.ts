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
        findChannelInvitationsForUser: () => {
            return [
                generators.generateChannelInvitation(serverState.loggedInUser, serverState.otherUsers[0], false, false),
                generators.generateChannelInvitation(serverState.loggedInUser, serverState.otherUsers[0], false, true),
                generators.generateChannelInvitation(serverState.otherUsers[0], serverState.loggedInUser, false, false),
                generators.generateChannelInvitation(serverState.otherUsers[0], serverState.loggedInUser, false, true),
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
        getUserProfileInfo: () => {
            return {
                __typename: "User",
                profileCompletionPercentage: generators.generateUserProfileCompletionPercentage(),
                lastUpdateTime: generators.generateUserLastUpdateTime(),
            };
        },
        myInbox: () => {
            var mockChannelId = faker.string.alphanumeric({length: 24});
            var pendingInvitation = generators.generateChannelInvitation(serverState.otherUsers[0], serverState.loggedInUser, false, false)
            return {
                __typename: "UserInbox",
                channels: {
                    __typename: "ChannelInbox",
                    pendingInvitations: [
                        pendingInvitation
                    ],
                    invitations: [
                        generators.generateChannelInvitation(serverState.loggedInUser, serverState.otherUsers[0], false, false),
                        pendingInvitation
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