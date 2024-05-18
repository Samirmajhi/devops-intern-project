# First stage: Build
FROM node:20.12.2 AS build

# Set the working directory in the build container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Second stage: Production
FROM node:20-alpine

# Set the working directory in the final container
WORKDIR /usr/src/app

# Copy only the necessary files from the build stage
COPY --from=build /usr/src/app /usr/src/app

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]