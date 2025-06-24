FROM n8nio/n8n:1.40.0

USER root

# Install googleapis inside n8n app directory (not globally!)
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install googleapis

# Allow external module access
ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=googleapis

USER node
