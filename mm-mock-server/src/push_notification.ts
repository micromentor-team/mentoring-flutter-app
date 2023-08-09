import { initializeApp, cert} from 'firebase-admin/app';
import { getMessaging } from 'firebase-admin/messaging';

const app = initializeApp({
  credential: cert(require("../firebase_service_account.json"))
});

// This registration token comes from the client FCM SDKs.
const registrationToken = 'f2D6BUvoRv2N3FNuezfIRH:APA91bExkHuBwfNq3rnLhuMBUgpy3jpPGBo9Rrs0r7ybphd7D0q8LXfi82XN_L3iWfRXpE_7X2P6GyMllS6XOkHL1UMc3QwBGcBIwzvgGSLQbJI83iq2_NLbXbmH_k3x5UWu9OYBJ4_a';

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
