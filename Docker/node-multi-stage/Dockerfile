###### base stage ##########

FROM node:20-alpine AS base
RUN apk update && \
    apk upgrade --no-cache && \
    apk add --no-cache tini && \
    npm install -g npm@10

WORKDIR /usr/src/app
COPY package*.json ./

###### devlopment stage ##########

FROM base AS development
ENV NODE_ENV=development
RUN npm install
COPY . .
EXPOSE 3000
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["npm", "run", "dev"]

###### build stage ##########

FROM base AS build
RUN npm install --omit=dev

###### production stage ##########

FROM base AS production
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/node_modules ./node_modules
COPY . .
USER node
EXPOSE 3000
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "app.js"]