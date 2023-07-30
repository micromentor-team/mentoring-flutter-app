import { MockServerState } from "./util/state";
import * as generators from "./util/generators";

export function mockQueries(serverState: MockServerState) {
    return {
        findChannelById: () => {
            return serverState.channels[0];
        },
        findChannelMessages: () => {
            return serverState.channelMessages;
        },
        findChannelsForUser: () => {
            return serverState.channels;
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
            return {
                __typename: "UserInbox",
                channels: {
                    __typename: "ChannelInbox",
                    invitations: serverState.channelInboxItemInvitations,
                    pendingInvitations: [
                        serverState.channelInboxItemInvitations[0],
                        serverState.channelInboxItemInvitations[1],
                    ],
                    unseenMessages: [
                        generators.generateChannelInboxItemMessage(serverState.channels[0].id, serverState.loggedInUser),
                        generators.generateChannelInboxItemMessage(serverState.channels[0].id, serverState.otherUsers[0]),
                    ],
                }
            }
        },
    }
}