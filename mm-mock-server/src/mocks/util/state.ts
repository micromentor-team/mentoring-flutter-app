import * as generators from './generators';

export class MockServerState {
    loggedIn: boolean;
    loggedInUser: any;
    otherUsers: any[];

    constructor() {
        this.loggedIn = false;
        this.loggedInUser = generators.generateUser();
        this.otherUsers = [
            generators.generateUser(),
        ]
    }
}