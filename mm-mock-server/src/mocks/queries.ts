import { MockServerState } from "./util/state";
import * as constants from "./util/constants";
import * as generators from "./util/generators";

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
                    pendingInvitations: [
                        serverState.channelInboxItemInvitations[0],
                        serverState.channelInboxItemInvitations[1],
                    ],
                    unseenMessages: [
                        generators.generateChannelInboxItemMessage(serverState.channels[0], serverState.loggedInUser),
                        generators.generateChannelInboxItemMessage(serverState.channels[0], serverState.otherUsers[0]),
                    ],
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