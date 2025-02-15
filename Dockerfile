# Use Node.js 20 as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the entire project into the container
COPY . .

# Expose port 4000 for the WebSocket server
EXPOSE 4000

# Start the WebSocket server
CMD ["node", "wsserver.js"]
