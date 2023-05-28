import { ApolloServer } from "@apollo/server";
import { startStandaloneServer } from "@apollo/server/standalone";
import { addMocksToSchema, MockStore } from "@graphql-tools/mock";
import { makeExecutableSchema } from "@graphql-tools/schema";
import { readFileSync } from "fs"
import { join } from "path";
import { mocks } from "./mocks"
import { resolvers } from "./resolvers";


async function startApolloServer() {
    const typeDefs = readFileSync(join(__dirname, '../schema.graphql'), 'utf-8');

    const schemaWithResolvers = makeExecutableSchema({
        typeDefs: typeDefs,
        resolvers: resolvers,
    });

    const mockStore = new MockStore({ schema: schemaWithResolvers, mocks: mocks });    

    const schemaWithResolversAndMocks = addMocksToSchema({
        schema: schemaWithResolvers,
        store: mockStore,
        preserveResolvers: true
    });

    const server = new ApolloServer({ schema: schemaWithResolversAndMocks });

    const { url } = await startStandaloneServer(server, {
        listen: { port: 4000 },
    });

    console.log(`Mock Apollo Server ready at ${url}`);
}

startApolloServer();