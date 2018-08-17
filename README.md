# node-red-contrib-auth-oidc

[Node-RED][nodered] node to use OpenID Connect with HTTP input nodes.

![Screenshot](screenshot.png)

## Install

Run the following command in the root directory of your Node-RED install

```bash
npm install node-red-contrib-auth-oidc
```

## Usage

You have to configure the node by setting the discovery URL of your OpenID Connect provider.

**Examples:**

|Provider|Discovery URL|
|--------|---|
|Google|https://accounts.google.com/.well-known/openid-configuration|
|Microsoft|https://login.windows.net/common/.well-known/openid-configuration|
|Salesforce|https://login.salesforce.com/.well-known/openid-configuration|
|[Okta][okta]|https://YOUR_SUB_DOMAIN.okta.com/.well-known/openid-configuration|
|[Auth0][auth0]|https://YOUR_SUB_DOMAIN.auth0.com/.well-known/openid-configuration|
|[Keycloak][keycloak]|https://YOUR_DOMAIN/auth/realms/YOUR_REALM_NAME/.well-known/openid-configuration|

This node extract and validate the access token from HTTP headers (`Authorization: Bearer XXX`).

Decoded token (JWT) is stored into the message property: `msg.access_token`.

[nodered]: https://nodered.org/
[node-openid-client]: https://github.com/panva/node-openid-client
[okta]: https://www.okta.com
[auth0]: https://auth0.com
[keycloak]: https://www.keycloak.org/
