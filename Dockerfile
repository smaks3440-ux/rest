FROM nginx:1.27-alpine

# Serve the approved single-page RestoHub site with Nginx.
COPY index.html /usr/share/nginx/html/index.html

# Render provides PORT; the official Nginx image expands templates from
# /etc/nginx/templates before starting Nginx.
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

ENV PORT=10000
EXPOSE 10000

CMD ["nginx", "-g", "daemon off;"]
