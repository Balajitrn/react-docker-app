# Use an official Node.js image as the base
FROM node:alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

#Install serve to serve the build directory
RUN npm install -g serve

# The port app runs on
EXPOSE 5000

# Command to run the app
CMD ["serve", "s", "build", "-1", "5000"]
