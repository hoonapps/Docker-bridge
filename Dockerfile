# Base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy source code
COPY . .

# Build NestJS app
RUN yarn build

# Expose app port
EXPOSE 3000

# Run the app in watch mode
CMD ["yarn", "run", "start:dev"]
