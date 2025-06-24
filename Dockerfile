FROM n8nio/n8n:1.99.1

# Install required external Node module(s)
USER root
RUN npm install googleapis

# Switch back to n8n user for security
USER node
