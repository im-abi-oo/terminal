FROM alpine:3.18

# نصب ابزارها
RUN apk add --no-cache bash ttyd

# ساخت کاربر غیر-root (استاندارد امنیتی)
RUN adduser -D dev

# کپی اسکریپت اجرا
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 10000

CMD ["/start.sh"]
