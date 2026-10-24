FROM nginx:alpine

# Copy static website files
COPY . /usr/share/nginx/html

# Copy custom nginx configuration for SPA routing on port 8080
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Google Cloud Run injects PORT (default 8080)
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
