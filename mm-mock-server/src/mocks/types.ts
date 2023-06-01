import { IMocks } from "@graphql-tools/mock";
import { faker } from "@faker-js/faker";
import { MockServerState } from "./util/state"
import * as generators from "./util/generators"

export function mockTypes(serverState: MockServerState): IMocks {
    return {
        DateTime: () => faker.date.recent(),
        UserAuthResponse: () => generators.generateUserAuthResponse(serverState.loggedInUser.id),
    }
}