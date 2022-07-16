#########################################
# Node-RED server with OpenID Auth plugin
##########################################

FROM nodered/node-red

USER root

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

RUN npm link

USER node-red

WORKDIR /usr/src/node-red

RUN npm link node-red-contrib-auth-oidc
