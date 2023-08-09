# Use the official Node.js image as the base image
FROM node:19

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json /app/
COPY package-lock.json /app/

# Install app dependencies
RUN npm install

# Copy the entire app to the container
COPY . .

# Build the React app for production
RUN npm run build

# Expose the port that your React app listens on
EXPOSE 3000

# Command to run your app when the container starts
CMD ["npm", "start"]