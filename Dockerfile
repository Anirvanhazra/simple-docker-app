# Specify base image for container
FROM node:alpine

WORKDIR /usr/apps
# Install dependencies for programs to run
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Run commands at startup of container
CMD ["npm", "start"]