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
        acceptChannelInvitation: (_: any, args: { channelInvitationId: string }) => {
            const channelInvitation = serverState.channelInvitations.find((e) => e.id == args.channelInvitationId);
            channelInvitation.status = "accepted";
            channelInvitation.channel = generators.generateChannel([channelInvitation.sender, channelInvitation.recipient]);
            const messageFromInvitation = generators.generateChannelMessage(
                channelInvitation.messageText,
                channelInvitation.channel,
                channelInvitation.sender,
                channelInvitation.createdAt,
            );
            serverState.channelMessages.push(messageFromInvitation);
            channelInvitation.channel.latestMessage = messageFromInvitation;
            serverState.channels.push(channelInvitation.channel);
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: channelInvitation.id }});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: channelInvitation.channel.id,
                    invitationId: channelInvitation.id,
                    eventType: 'invitationUpdated',
                }
            });
            return channelInvitation.id;
        },
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
        createChannelInvitation: (_: any, args: { input: { senderId: string, recipientId: string, messageText: string}}) => {
            const recipient = serverState.otherUsers.find((e) => e.id == args.input.recipientId);
            const invitation = generators.generateChannelInvitation(serverState.loggedInUser, recipient, args.input.messageText);
            serverState.channelInvitations.push(invitation);
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: invitation.id }});
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
        declineChannelInvitation: (_: any, args: { channelInvitationId: string }) => {
            const channelInvitation = serverState.channelInvitations.find((e) => e.id == args.channelInvitationId);
            channelInvitation.status = "declined";
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: channelInvitation.id }});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: channelInvitation.channel?.id,
                    invitationId: channelInvitation.id,
                    eventType: 'invitationUpdated',
                }
            });
            return channelInvitation.id;
        },
        deleteChannelInvitation: (_: any, args: { deletePhysically: boolean, channelInvitationId: string }) => {
            const channelInvitation = serverState.channelInvitations.find((e) => e.id == args.channelInvitationId);
            const currentTime : string = new Date().toISOString();
            channelInvitation.deletedAt = currentTime;
            channelInvitation.updatedAt = currentTime;
            serverState.pubsub.publish(PUBSUB_OBJECT_CHANGED, { objectChanged: { objectId: channelInvitation.id }});
            serverState.pubsub.publish(PUBSUB_CHANNEL_CHANGED, { 
                channelChanged: {
                    channelId: channelInvitation.channel?.id,
                    invitationId: channelInvitation.id,
                    eventType: 'invitationDeleted',
                }
            });
            return channelInvitation.id;
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
        createUserSearch: (_: any, args: {
            seeksHelp: string | null,
            offersHelp: string | null,
            expertisesTextIds: string[] | null,
            businessDevelopment: string[] | null,
            industriesTextIds: string[] | null,
            countryTextIds: string[] | null,
            companyStagesTextIds: string[] | null,
            languagesTextIds: string[] | null,
        }) => {
            const search = generators.generateUserSearch(args, serverState.otherUsers);
            serverState.userSearches.push(search);
            // clone search
            const response = JSON.parse(JSON.stringify(search));
            response.runInfos = null;
            response.updatedAt = null;
            response.topFoundUsers =
                serverState.otherUsers.concat([serverState.loggedInUser]);
            return response;
        }
    }
}
