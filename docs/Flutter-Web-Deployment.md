# Flutter Web Deployment Guidance

For organizations intending to deploy this Flutter application as a web application, the following guidance is provided for hosting and deployment.

## Deployment during development

To quickly and easily get a deployment set up, follow the steps provided in the Firebase and Flutter official resources:
- [Flutter web deployment guide](https://docs.flutter.dev/deployment/web)
- [Firebase hosting docs](https://firebase.google.com/docs/hosting/frameworks/flutter), including Flutter Web specific page

These other resources would be helpful with the Firebase hosting setup:
- [How to copy a preview of a new deployment to production](https://firebase.google.com/docs/hosting/test-preview-deploy)
- [Medium post similar to official docs, but with screenshots](https://medium.com/flutter/must-try-use-firebase-to-host-your-flutter-app-on-the-web-852ee533a469)

.env files are not copied into the Firebase Hosting environment (e.g. the address for the API server). There are [several ways](https://stackoverflow.com/questions/34442739/how-does-one-set-private-environment-variables-on-firebase-hosting) to handle this, none of which have been implemented in this Flutter project. For simple deployments without sensitive info in the .env files, some values could be set up as fallbacks in case the .env file is not found.

Automated deployments [can be set up with GitHub Actions](https://firebase.google.com/docs/hosting/github-integration) if desired.

## Deployment for production

For production deployments, the requirements for your app and the team's familiarity with app infrastructure will determine how this should be deployed. The Firebase Hosting used in development might be sufficient for your purposes. Deploying to a couple managed VMs behind a load balancer might be enough. For larger scales, you might want to consider a managed Kubernetes service or a serverless architecture.

[Here's an example](https://spltech.co.uk/how-to-deploy-flutter-webapp-using-google-kubernetes-engine/) of how to set up that Kubernetes service.