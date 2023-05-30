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
            return [
                serverState.loggedInUser,
                serverState.otherUsers[0],
            ]
        },
        getAuthenticatedUser: () => {
            if (!serverState.loggedIn) {
                return null;
            }
            return serverState.loggedInUser;
        },
        myInbox: () => {
            var mockChannelId = faker.string.alphanumeric({length: 24});
            return {
                __typename: "UserInbox",
                channels: {
                    __typename: "ChannelInbox",
                    unseenMessages: [
                        generators.generateChannelInboxItemMessage(mockChannelId, serverState.loggedInUser),
                        generators.generateChannelInboxItemMessage(mockChannelId, serverState.otherUsers[0]),
                    ],
                }
            }
        }
    }
}