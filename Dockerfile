# Step 1: Choose a base image
FROM node:16

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy requirements first
COPY package.json .

# Step 4: Install package dependencies
RUN npm install -r package.json

# Step 5: Copy application code
COPY . .

# Step 6: Expose the port the app runs on
EXPOSE 3000

# Step 7: Define the command to run the application
CMD ["npm", "start"] 