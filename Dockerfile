# Step 1: Use an official Node.js image
FROM node:16-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json first (to take advantage of Docker cache)
COPY package*.json ./

# Step 4: Install dependencies (this will install Vite too)
RUN npm install

# Step 5: Copy the rest of the application
COPY . .

# Step 6: Build the app (this ensures Vite is part of the image)
RUN npm run build

# Step 7: Expose the port (optional, you can override with 'docker run')
EXPOSE 3000

# Set the default command to run the app (optional)
CMD ["npm", "run", "dev"]
