FROM nginx:latest
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY docker_entrypoint.sh /docker_entrypoint.sh

CMD ["sh", "/docker_entrypoint.sh"]