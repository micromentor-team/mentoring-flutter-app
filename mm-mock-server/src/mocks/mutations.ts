import { MockServerState } from "./util/state";
import * as generators from "./util/generators";

export function mockMutations(serverState: MockServerState) {
    return {
        deleteUser: () => {
            serverState.loggedIn= false;
        },
        signInUser: () => {
            serverState.loggedIn = true;
        },
        signUpUser: () => {
            serverState.loggedIn = true;
        },
        signMeOut: () => {
            serverState.loggedIn = false;
            return "ok";
        },
        createChannel: () => {
            const channel = generators.generateChannel([serverState.loggedInUser, serverState.otherUsers[1]])
            serverState.channels.push(channel);
            return channel;
        },
        createChannelInvitation: () => {
            const invitation = generators.generateChannelInvitation([serverState.loggedInUser, serverState.otherUsers[1]])
            serverState.channelInvitations.push(invitation);
            return invitation;
        },
        createChannelMessage: () => {
            const message = generators.generateChannelMessage(serverState.loggedInUser, true)
            serverState.channelMessages.push(message);
            return message;
        },
        updateChannelInvitation: (status: any) => {
            const invitation = serverState.channelInvitations[0]
            if (status) {
                if (status === "accepted"){
                    invitation.status = "accepted";
                    invitation.channel = generators.generateChannel([serverState.loggedInUser, serverState.otherUsers[3]])
                    serverState.channels.push(invitation.channel);
                }
                else if (status === "declined")
                    invitation.status = "declined";
            }
            return invitation.id;
        }
    }
}