import { MockServerState } from "./util/state";
import * as generators from "./util/generators";

export function mockMutations(serverState: MockServerState) {
    return {
        // users
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
        // channels, channel invitations and channel messages
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
        createChannelMessage: (_: any, args: { input: { channelId: string, messageText: string , replyToMessageId: string | null}}) => {
            const message = generators.generateChannelMessage(
                args.input.messageText,
                args.input.channelId,
                serverState.loggedInUser,
                new Date(),
                true,
                false,
                false,
                args.input.replyToMessageId,
            );
            serverState.channelMessages.push(message);
            return message;
        },
        deleteChannelMessage: (_: any, args: { channelMessageId: string, deletePhysically: boolean }) => {
            var channelMessage = serverState.channelMessages.find((element) => element.id == args.channelMessageId);
            const currentTime : string = new Date().toISOString();
            channelMessage.deletedAt = currentTime;
            channelMessage.updatedAt = currentTime;
            return "ok";
        },
        markChannelMessagesAsSeenByMe: (_: any, args: { channelId: string }) => {
            var channelMessages = serverState.channelMessages.filter((element) => element.channelId == args.channelId);
            channelMessages.forEach((element) => {
                element.statuses = [
                    {
                        __typename: "ChannelMessageStatus",
                        seenAt: new Date().toISOString(),
                    }
                ];
            });
            return "ok";
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
        },
        updateChannelMessage: (_: any, args: { input: { id: string | null, messageText: string | null, deletedAt: Date | null } }) => {
            var channelMessage = serverState.channelMessages.find((element) => element.id == args.input.id);
            const currentTime : string = new Date().toISOString();
            if(args.input.deletedAt) {
                channelMessage.deletedAt = args.input.deletedAt.toISOString();
            } else {
                channelMessage.deletedAt = null;
            }
            if(args.input.messageText != channelMessage.messageText) {
                channelMessage.messageText = args.input.messageText;
                channelMessage.editedAt = currentTime;
            }
            channelMessage.updatedAt = currentTime;
            return "ok";
        },
    }
}