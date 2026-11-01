FROM nginx:stable-alpine

RUN rm -rf /usr/share/nginx/html/*
COPY deploy/nginx.conf /etc/nginx/conf.d/default.conf
COPY portfolio/ /usr/share/nginx/html/
COPY demos/ /usr/share/nginx/html/demos/
RUN nginx -t

EXPOSE 80
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
