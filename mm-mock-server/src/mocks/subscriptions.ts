import { withFilter } from 'graphql-subscriptions';
import { MockServerState } from "./util/state";

export const PUBSUB_OBJECT_CHANGED = 'PUBSUB_OBJECT_CHANGED';
export const PUBSUB_CHANNEL_CHANGED = 'PUBSUB_CHANNEL_CHANGED';

export function mockSubscriptions(serverState: MockServerState) {
    return {
        objectChanged: {
            subscribe: withFilter(
                () => serverState.pubsub.asyncIterator([PUBSUB_OBJECT_CHANGED]),
                (payload, args) => {
                    return (
                        payload.objectChanged.objectId == args.objectId
                    );
                },
            ),
        },
        channelChanged: {
            subscribe: withFilter(
                () => serverState.pubsub.asyncIterator([PUBSUB_CHANNEL_CHANGED]),
                (payload, args) => {
                    return (
                        payload.channelChanged.channelId == args.channelId
                    );
                },
            ),
        },
    }
}