# Pull the minimal Ubuntu image
FROM ubuntu

# Install Nginx
RUN apt-get -y update && apt-get -y install nginx

# Copy the Nginx config
ADD https://github.com/komarovma/nginx/blob/main/nginx.conf /etc/nginx/nginx.conf

# Copy the index
ADD https://github.com/komarovma/nginx/blob/main/index.html  /www

# Expose the port for access
EXPOSE 80/tcp

# Run the Nginx server
CMD ["nginx"]