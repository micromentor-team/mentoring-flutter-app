import { initializeApp, cert} from 'firebase-admin/app';
import { getMessaging } from 'firebase-admin/messaging';

const app = initializeApp({
  credential: cert(require("../firebase_service_account.json"))
});

// This registration token comes from the client FCM SDKs.
const registrationToken = '<FCM_TOKEN_HERE>';

const message = {
  notification: {
    title: 'Local script',
    body: 'Testing',
  },
  data: {
    routeName: 'explore',
  },
  token: registrationToken
};

// Send a message to the device corresponding to the provided
// registration token.
getMessaging().send(message)
  .then((response) => {
    // Response is a message ID string.
    console.log('Successfully sent message:', response);
  })
  .catch((error) => {
    console.log('Error sending message:', error);
  });
