# Step 1: Use an official Node.js image
FROM node:16-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies (this will include Vite)
RUN npm install

# Step 5: Copy the rest of the application
COPY . .

# Step 6: Expose the port (optional)
EXPOSE 3000

# Step 7: Set the default command to run the app (optional, you can override with 'docker run')
CMD ["npm", "run", "dev"]
