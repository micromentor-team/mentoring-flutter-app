var loggedIn = false;

export const resolvers = {
    Query: {
        getAuthenticatedUser: () => {
            if (!loggedIn) {
                return null;
            }
            return {
                __typename: "User",
                id: "646c1a49b1d391c456906835",
                email: "janedoe@test.com",
                fullName: "Jane Doe",
                avatarUrl: null,
                userHandle: "janedoe",
            }
        },
        findUsers: () => {
            return [
                {
                    __typename: "User",
                    id: "646c1a49b1d391c456906835",
                    email: "janedoe@test.com",
                    fullName: "Jane Doe",
                    avatarUrl: null,
                    userHandle: "janedoe",
                },
                {
                    __typename: "User",
                    id: "646c1a49b1d391c456906836",
                    email: "johndoe@test.com",
                    fullName: "John Doe",
                    avatarUrl: null,
                    userHandle: "johndoe",
                },
                {
                    __typename: "User",
                    id: "646c1a49b1d391c456906837",
                    email: "michaelsmith@test.com",
                    fullName: "Michael Smith",
                    avatarUrl: null,
                    userHandle: "michaelsmith",
                },
            ]
        }
    },
    Mutation: {
        signInUser: () => {
            loggedIn = true;
        },
        signUpUser: () => {
            loggedIn = true;
        },
        signMeOut: () => {
            loggedIn = false;
            return "ok";
        }
    }
}

