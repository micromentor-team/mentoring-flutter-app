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
            const invitation = generators.generateChannelInvitation(serverState.loggedInUser, serverState.otherUsers[1])
            serverState.channelInvitations.push(invitation);
            return invitation;
        },
        createChannelMessage: (_: any, args: { input: { messageText: string }}) => {
            const message = generators.generateChannelMessage(args.input.messageText ,serverState.channels[0].id, serverState.loggedInUser, new Date(), true)
            serverState.channelMessages.push(message);
            return message;
        },
        updateChannelInvitation: (_: any, args: { input: { status: string }}) => {
            const invitation = serverState.channelInvitations[0]
            if (args.input.status) {
                if (args.input.status === "accepted"){
                    invitation.status = "accepted";
                    invitation.channel = generators.generateChannel([serverState.loggedInUser, serverState.otherUsers[3]])
                    serverState.channels.push(invitation.channel);
                }
                else if (args.input.status === "declined")
                    invitation.status = "declined";
            }
            return invitation.id;
        }
    }
}