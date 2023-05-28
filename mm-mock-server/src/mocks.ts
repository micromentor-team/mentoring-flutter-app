import { IMocks } from "@graphql-tools/mock";
import { faker } from "@faker-js/faker";
import * as generators from "./generators"

export const mocks: IMocks = {
    DateTime: () => faker.date.recent(),
    UserAuthResponse: () => generators.userAuthResponse(),
}