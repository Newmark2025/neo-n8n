FROM n8nio/n8n:1.40.0

# Switch to root to install packages
USER root

# Install googleapis directly inside the image's /usr/local/lib
RUN npm install googleapis

# Allow the Code node to access external modules
ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=googleapis

# Revert to n8n user
USER node
