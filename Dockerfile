# Use the official Node.js image as base
FROM node:14

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (assuming your application listens on port 3000)
EXPOSE 3000

# Define environment variables
ENV AWS_REGION=us-east-1
ENV ENV_NAME=production

# Command to run your application
CMD ["npm", "start"]
