FROM n8nio/n8n:1.40.0

USER root
RUN npm install -g googleapis@127

ENV N8N_NODE_FUNCTION_ALLOW_EXTERNAL=googleapis

USER node
