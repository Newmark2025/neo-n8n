FROM n8nio/n8n:1.99.1

# Install the googleapis package into a directory Code node can access
USER root
RUN npm install -g googleapis

# Allow n8n code node to access global modules
ENV NODE_PATH=/usr/local/lib/node_modules

# Go back to default node user
USER node
