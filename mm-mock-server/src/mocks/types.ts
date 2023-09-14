import { IMocks } from "@graphql-tools/mock";
import { faker } from "@faker-js/faker";
import { MockServerState } from "./util/state"
import * as generators from "./util/generators"

export function mockTypes(serverState: MockServerState): IMocks {
    return {
        String: () => "_UNDEFINED_",
        DateTime: () => faker.date.recent(),
        DateTimeISO: () => faker.date.recent(),
        UserAuthResponse: () => generators.generateUserAuthResponse(serverState.loggedInUser.id),
    }
}