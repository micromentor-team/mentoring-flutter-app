import { faker } from "@faker-js/faker";

export function userAuthResponse() {
    return {
        authToken: "auth:"+faker.string.hexadecimal({length:64}),
        authTokenExpiresAt: faker.date.future(),
        deviceId: faker.string.uuid(),
        deviceUuid: faker.string.uuid(),
        userId: faker.string.uuid(),
    }
}