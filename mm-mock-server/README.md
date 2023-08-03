# MicroMentor Mock Server

This is a mock server that allows the frontend application to be run and tested locally.
As mock server, it is extremely limited in the amount of user flows and actions that
are supported.

Run the commands below in: mm-flutter-app/mm-mock-server

## Setting Up

1. Install dependencies with `npm install`.
2. Run the mock server with `npm start`.
3. Verify that the mock server is running at `http://localhost:4000/`.
4. Create the file `/assets/.env` on the Flutter project, and add the following variables:

    ```
    APP_GRAPHQL_URL="http://localhost:4000/mmdata/api/graphql"
    APP_SUBSCRIPTION_URL="ws://localhost:4000/mmdata/api/graphql"
    ```
5. Run the Flutter app to have it connect to the mocked server.