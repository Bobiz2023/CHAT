# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install git to clone the repository
RUN apt-get update && apt-get install -y git

# Clone the GitHub repository
RUN git clone https://github.com/Muhammadumair0/Voice-chat-room.git .

# Install project dependencies
RUN npm install

# Expose the port your application uses (adjust if necessary)
EXPOSE 3000

# Command to run both npm run dev and npm run server
CMD ["sh", "-c", "npm run dev & npm run server"]
