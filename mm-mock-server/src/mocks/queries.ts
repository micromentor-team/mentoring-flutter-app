import { MockServerState } from "./util/state";
import * as constants from "./util/constants";
import { generateChannelInboxItemInvitation } from "./util/generators";

export function mockQueries(serverState: MockServerState) {
    return {
        // users
        findUsers: () => {
            return serverState.otherUsers.concat([serverState.loggedInUser]);
        },
        getAuthenticatedUser: () => {
            if (!serverState.loggedIn) {
                return null;
            }
            return serverState.loggedInUser;
        },
        // channels, channel invitations and channel messages
        findChannelById: (_: any, args: { id: string }) => {
            return serverState.channels.find((e) => e.id == args.id);
        },
        findChannelInvitationById: (_: any, args: { id: string }) => {
            return serverState.channelInvitations.find((e) => e.id == args.id);
        },
        findChannelMessages: (_: any, args: { filter: { channelId: string }}) => {
            return serverState.channelMessages.filter((e) => e.channelId == args.filter.channelId);
        },
        findChannelMessageById: (_: any, args: { id: string }) => {
            return serverState.channelMessages.find((e) => e.id == args.id);
        },
        findChannelsForUser: () => {
            return serverState.channels;
        },
        myInbox: () => {
            const channelInboxItemInvitations = serverState.channelInvitations.map((e) => generateChannelInboxItemInvitation(e));
            return {
                __typename: "UserInbox",
                channels: {
                    __typename: "ChannelInbox",
                    invitations: channelInboxItemInvitations,
                    pendingInvitations: channelInboxItemInvitations.filter((e) => e.status == "created"),
                    unseenMessages: serverState.channelMessages.filter((e) => !e.statuses || e.statuses.length == 0),
                }
            }
        },
        // content service
        findCompanyStages: () => {
            return constants.companyStages;
        },
        findCompanyTypes: () => {
            return constants.companyTypes;
        },
        findCountries: () => {
            return constants.countries;
        },
        findEducationLevels: () => {
            return constants.educationLevels;
        },
        findExpertises: () => {
            return constants.expertises;
        },
        findGenders: () => {
            return constants.genders;
        },
        findIndustries: () => {
            return constants.industries;
        },
        findLanguages: () => {
            return constants.languages;
        },
        // groups
        findGroups: () => {
            return serverState.groups;
        },
    }
}