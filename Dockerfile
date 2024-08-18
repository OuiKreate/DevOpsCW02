# Step 1: Use an official Node.js runtime as the base image
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json files
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install

# Step 5: Copy the application source code
COPY . .

# Step 6: Expose the application’s port
EXPOSE 8081

# Step 7: Start the application
CMD ["node", "server.js"]
