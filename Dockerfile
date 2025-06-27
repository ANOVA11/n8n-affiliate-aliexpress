FROM node:18

# تثبيت n8n
RUN npm install -g n8n

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=12345678
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-affiliate-aliexpress.onrender.com/

EXPOSE 5678

CMD ["n8n"]
