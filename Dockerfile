# Stage 1: Base - Install dependencies and build the app
FROM node:20.11.1

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Run the entry-point script and start the application
CMD ["npm", "start"]