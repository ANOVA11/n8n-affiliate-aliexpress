FROM n8nio/n8n

# إعداد مجلد العقد المخصصة
RUN mkdir -p /home/node/.n8n/custom

# تثبيت عقدة AliExpress داخل هذا المجلد
RUN npm install --prefix /home/node/.n8n/custom n8n-nodes-aliexpress-affiliate

# تحديد مجلد الإضافات المخصصة
ENV N8N_CUSTOM_EXTENSIONS="/home/node/.n8n/custom"

# تشغيل n8n
CMD ["n8n", "start"]
