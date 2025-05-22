# Use node Alpine image for a lightweight build environment
FROM node:lts-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package files first to optimize build caching
COPY package*.json ./
COPY client/package*.json client/
COPY server/package*.json server/

# Install dependencies
RUN npm install
RUN npm run install-client
RUN npm run install-server --omit=dev

# Copy application source code after installing dependencies
COPY client/ client/
COPY server/ server/

# Build React app and copy output to server/public
RUN mkdir -p /app/server/public && \
    npm run build --prefix client && \
    cp -r client/build/* /app/server/public/

# Switch to node user
USER node

# Start the server
CMD ["npm", "start", "--prefix", "server"]

# Expose your server port
EXPOSE 8000