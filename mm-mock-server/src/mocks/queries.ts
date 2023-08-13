import { MockServerState } from "./util/state";
import * as constants from "./util/constants";

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
            return serverState.channels.find((element) => element.id == args.id);
        },
        findChannelMessages: () => {
            return serverState.channelMessages;
        },
        findChannelsForUser: () => {
            return serverState.channels;
        },
        myInbox: () => {
            return {
                __typename: "UserInbox",
                channels: {
                    __typename: "ChannelInbox",
                    invitations: serverState.channelInboxItemInvitations,
                    pendingInvitations: serverState.channelInboxItemInvitations.filter((e) => e.status == "created"),
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