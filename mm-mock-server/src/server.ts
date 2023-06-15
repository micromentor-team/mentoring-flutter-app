import { ApolloServer } from "@apollo/server";
import { startStandaloneServer } from "@apollo/server/standalone";
import { addMocksToSchema } from "@graphql-tools/mock";
import { makeExecutableSchema } from "@graphql-tools/schema";
import { readFileSync } from "fs"
import { join } from "path";
import { MockServerState } from "./mocks/util/state";
import { mockTypes } from "./mocks/types"
import { mockQueries } from "./mocks/queries"
import { mockMutations } from "./mocks/mutations"

async function startApolloServer() {
    // Obtain type definitions from the schema file.
    const typeDefs = readFileSync(join(__dirname, '../schema.graphql'), 'utf-8');

    // The mock server state is used to simulate a stateful backend.
    const serverState = new MockServerState();

    // Add custom resolvers for selected queries and mutations.
    const schemaWithResolvers = makeExecutableSchema({
        typeDefs: typeDefs,
        resolvers: {
            Query: mockQueries(serverState),
            Mutation: mockMutations(serverState),
        },
    });

    // Add mocks for types not caught by the custom resolvers.
    const schemaWithResolversAndMocks = addMocksToSchema({
        schema: schemaWithResolvers,
        mocks: mockTypes(serverState),
        preserveResolvers: true
    });

    const server = new ApolloServer({ schema: schemaWithResolversAndMocks });

    const { url } = await startStandaloneServer(server, {
        listen: { port: 4000 },
    });

    console.log(`Mock Apollo Server ready at ${url}`);
}

startApolloServer();