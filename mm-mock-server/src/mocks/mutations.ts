import { MockServerState } from "./util/state";
import { PUBSUB_OBJECT_CHANGED, PUBSUB_CHANNEL_CHANGED } from "./subscriptions";
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
        archiveChannelForMe: (_: any, args: { channelId: string }) => {
            let channel = serverState.channels.find((element) => element.id == args.channelId);
            channel.isArchivedForMe = true;
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: args.channelId}});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: args.channelId,
                    eventType: 'channelUpdated',
                }
            });
            return channel.id;
        },
        createChannel: () => {
            const channel = generators.generateChannel([serverState.loggedInUser, serverState.otherUsers[1]])
            serverState.channels.push(channel);
            return channel;
        },
        createChannelInvitation: () => {
            const invitation = generators.generateChannelInvitation(serverState.loggedInUser, serverState.otherUsers[1])
            serverState.channelInvitations.push(invitation);
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: invitation.channel.id }});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: invitation.channel.id,
                    invitationId: invitation.id,
                    eventType: 'invitationCreated',
                }
            });
            return invitation;
        },
        createChannelMessage: (_: any, args: { input: { channelId: string, messageText: string , replyToMessageId: string | null}}) => {
            let channel = serverState.channels.find((element) => element.id == args.input.channelId);
            const message = generators.generateChannelMessage(
                args.input.messageText,
                channel,
                serverState.loggedInUser,
                new Date(),
                true,
                false,
                false,
                args.input.replyToMessageId,
            );
            channel.latestMessage = message;
            serverState.channelMessages.push(message);
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: args.input.channelId }});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: args.input.channelId,
                    messageId: message.id,
                    eventType: 'messageCreated',
                }
            });
            return message;
        },
        deleteChannelMessage: (_: any, args: { channelMessageId: string, deletePhysically: boolean }) => {
            var channelMessage = serverState.channelMessages.find((element) => element.id == args.channelMessageId);
            const currentTime : string = new Date().toISOString();
            channelMessage.deletedAt = currentTime;
            channelMessage.updatedAt = currentTime;
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: args.channelMessageId }});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: channelMessage.channelId,
                    messageId: args.channelMessageId,
                    eventType: 'messageDeleted',
                }
            });
            return args.channelMessageId;
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
                serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                    channelChanged: {
                        channelId: args.channelId,
                        messageId: element.id,
                        eventType: 'messageStatusChanged',
                    }
                });
            });
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: args.channelId }});
            return args.channelId;
        },
        unarchiveChannelForMe: (_: any, args: { channelId: string }) => {
            let channel = serverState.channels.find((element) => element.id == args.channelId);
            channel.isArchivedForMe = false;
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: args.channelId }});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: args.channelId,
                    eventType: 'channelUpdated',
                }
            });
            return channel.id;
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
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: invitation.id }});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: invitation.channel.id,
                    invitationId: invitation.id,
                    eventType: 'invitationUpdated',
                }
            });
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
            if(args.input.messageText && args.input.messageText != channelMessage.messageText) {
                channelMessage.messageText = args.input.messageText;
                channelMessage.editedAt = currentTime;
            }
            channelMessage.updatedAt = currentTime;
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: channelMessage.channelId }});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: channelMessage.channelId,
                    messageId: channelMessage.id,
                    eventType: 'messageUpdated',
                }
            });
            return channelMessage.id;
        },
    }
}