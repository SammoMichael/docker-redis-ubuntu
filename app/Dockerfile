FROM node:alpine

WORKDIR /app

# Copy only package and package-lock
# This is a layer optimization to let
# Docker skip this build step if neither
# package files have changed
COPY package* ./

# Install NPM dependencies
RUN npm install

# Copy the rest of our app
COPY . ./
