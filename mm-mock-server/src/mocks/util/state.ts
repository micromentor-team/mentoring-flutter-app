import * as generators from './generators';

export class MockServerState {
    loggedIn: boolean;
    loggedInUser: any;
    otherUsers: any[];
    channels: any[];
    channelInvitations: any[];
    channelMessages: any[];

    constructor() {
        this.loggedIn = false;
        this.loggedInUser = generators.generateUser();
        // 4 users, one for each channel and one who hasn't communicated with the logged in user
        this.otherUsers = [
            generators.generateUser(),
            generators.generateUser(),
            generators.generateUser(),
            generators.generateUser(),
        ]
        this.channels = [
            generators.generateChannel([this.loggedInUser, this.otherUsers[0]]),
        ]
        this.channelInvitations = [
            // accepted invitation, channel exists
            generators.generateChannelInvitation(this.loggedInUser, this.otherUsers[0], false, true),
            // pending invitation
            generators.generateChannelInvitation(this.loggedInUser, this.otherUsers[1]),
            // declined invitation
            generators.generateChannelInvitation(this.loggedInUser, this.otherUsers[2], true),
            // TODO: accepted invitation, message doesn't exist yet in channel (a.k.a "match")
            // generators.generateChannelInvitation([this.loggedInUser, this.otherUsers[1]], false, true),
        ]
        this.channelMessages = [
            generators.generateChannelMessage(this.loggedInUser, true),
            generators.generateChannelMessage(this.otherUsers[0], false),
        ]
    }
}