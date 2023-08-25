import { PubSub } from 'graphql-subscriptions';
import { faker } from "@faker-js/faker";

import * as generators from './generators';

export class MockServerState {
    pubsub: PubSub;
    loggedIn: boolean;
    loggedInUser: any;
    otherUsers: any[];
    channels: any[];
    channelInvitations: any[];
    channelMessages: any[];
    groups: any[];

    constructor() {
        this.pubsub = new PubSub();
        this.groups = generators.generateCoreGroups()
            .concat(generators.generateGroup());
        this.loggedIn = false;
        this.loggedInUser = generators.generateUser(this.groups.filter(g => g.ident === "mentees"));
        // 4 users, one for each channel and one who hasn't communicated with the logged in user
        this.otherUsers = [
            generators.generateUser(this.groups.filter(g => g.ident === "mentors" || g.ident === "mentees")),
            generators.generateUser(this.groups.filter(g => g.ident === "mentors")),
            generators.generateUser(this.groups.filter(g => g.ident === "mentees")),
            generators.generateUser(this.groups.filter(g => g.ident === "mentees" || g.ident === "mentors")),
        ];
        this.channels = [
            generators.generateChannel([this.loggedInUser, this.otherUsers[0]]),
        ];
        this.channelInvitations = [
            // accepted invitation, channel exists
            generators.generateChannelInvitation(this.otherUsers[0], this.loggedInUser, false, true),
            // pending invitations
            generators.generateChannelInvitation(this.otherUsers[1], this.loggedInUser),
            generators.generateChannelInvitation(this.otherUsers[2], this.loggedInUser),
            // declined invitation
            generators.generateChannelInvitation(this.otherUsers[3], this.loggedInUser, true),
            // TODO: accepted invitation, message doesn't exist yet in channel (a.k.a "match")
            // generators.generateChannelInvitation([this.loggedInUser, this.otherUsers[1]], false, true),
        ];
        const message0 = generators.generateChannelMessage('Hello!', this.channels[0], this.loggedInUser, new Date('2023-07-26T12:34:01-07:00'), true);
        const message1 = generators.generateChannelMessage('👋', this.channels[0], this.loggedInUser, new Date('2023-07-26T12:34:01-07:00'), true, false, false);
        const message2 = generators.generateChannelMessage('Are you available for a quick chat next week?', this.channels[0], this.loggedInUser, new Date('2023-07-26T12:35:01-07:00'), true);
        const message3 = generators.generateChannelMessage('Hello, there!', this.channels[0], this.otherUsers[0], new Date('2023-07-27T08:23:01-07:00'), true);
        const message4 = generators.generateChannelMessage('Sorry, I am busy...', this.channels[0], this.otherUsers[0], new Date('2023-07-27T08:23:01-07:00'), true, false, true, message2.id);
        const message5 = generators.generateChannelMessage('Of course! Grab any open spot from my calendar.', this.channels[0], this.otherUsers[0], new Date('2023-07-27T08:23:01-07:00'), true, true, false, message2.id);
        const message6 = generators.generateChannelMessage('👍', this.channels[0], this.otherUsers[0], new Date('2023-07-27T08:24:01-07:00'), true);
        const message7 = generators.generateChannelMessage('dsflkjsadlkfjlk', this.channels[0], this.loggedInUser, new Date('2023-07-28T00:56:01-07:00'), true, false, true);
        const message8 = generators.generateChannelMessage('Thanks! I will set up some time 😊', this.channels[0], this.loggedInUser, new Date('2023-07-28T00:56:01-07:00'), true, true, false, message5.id);
        const message9 = generators.generateChannelMessage('You got it.', this.channels[0], this.otherUsers[0], new Date('2023-07-28T20:00:01-07:00'), false);
        const message10 = generators.generateChannelMessage('Let me know when you schedule it.', this.channels[0], this.otherUsers[0], new Date('2023-07-28T20:01:01-07:00'), false);
        this.channelMessages = [
            message0,
            message1,
            message2,
            message3,
            message4,
            message5,
            message6,
            message7,
            message8,
            message9,
            message10,
        ];
        this.channels[0].latestMessage = message10;
    }
}