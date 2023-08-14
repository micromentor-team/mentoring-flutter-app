import { ApolloServer } from "@apollo/server";
import { addMocksToSchema } from "@graphql-tools/mock";
import { makeExecutableSchema } from "@graphql-tools/schema";
import { ApolloServerPluginDrainHttpServer } from '@apollo/server/plugin/drainHttpServer';
import { expressMiddleware } from '@apollo/server/express4';
import { WebSocketServer } from 'ws';
import { useServer } from 'graphql-ws/lib/use/ws';
import { readFileSync } from "fs"
import { join } from "path";
import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';
import { createServer } from 'http';
import { MockServerState } from "./mocks/util/state";
import { mockTypes } from "./mocks/types"
import { mockQueries } from "./mocks/queries"
import { mockMutations } from "./mocks/mutations"
import { mockSubscriptions } from "./mocks/subscriptions";

async function startApolloServer() {
    // Obtain type definitions from the schema file.
    const typeDefs = readFileSync(join(__dirname, '../../lib/schema/schema.graphql'), 'utf-8');

    // The mock server state is used to simulate a stateful backend.
    const serverState = new MockServerState();

    // Add custom resolvers for selected queries and mutations.
    const schemaWithResolvers = makeExecutableSchema({
        typeDefs: typeDefs,
        resolvers: {
            Query: mockQueries(serverState),
            Mutation: mockMutations(serverState),
            Subscription: mockSubscriptions(serverState),
        },
    });

    // Add mocks for types not caught by the custom resolvers.
    const schemaWithResolversAndMocks = addMocksToSchema({
        schema: schemaWithResolvers,
        mocks: mockTypes(serverState),
        preserveResolvers: true
    });

    const app = express();
    const httpServer = createServer(app);

    // Create our WebSocket server using the HTTP server we just set up.
    const wsServer = new WebSocketServer({
        server: httpServer,
    });
    // Save the returned server's info so we can shutdown this server later  
    const serverCleanup = useServer({ schema: schemaWithResolversAndMocks }, wsServer);

    const server = new ApolloServer({
        schema: schemaWithResolversAndMocks,
        plugins: [
            // Proper shutdown for the HTTP server.
            ApolloServerPluginDrainHttpServer({ httpServer }),
        
            // Proper shutdown for the WebSocket server.
            {
                async serverWillStart() {
                    return {
                        async drainServer() {
                            await serverCleanup.dispose();
                        },
                    };
                },
            },
        ],
    });

    await server.start();
    app.use(cors<cors.CorsRequest>(), bodyParser.json(), expressMiddleware(server));

    const PORT = 4000;
    // Now that our HTTP server is fully set up, we can listen to it.
    httpServer.listen(PORT, () => {
        console.log(`Mock server is now running on http://localhost:${PORT}`);
    });
}

startApolloServer();