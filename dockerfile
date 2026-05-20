# Use official Node.js runtime
FROM node:20-alpine

# Create app directory inside container
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Expose Express port (change if your app uses another port)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]