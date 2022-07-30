# Pull the minimal Ubuntu image
FROM ubuntu

# Install Nginx
RUN apt-get -y update && apt-get -y install nginx

# Copy the Nginx config
ADD https://github.com/komarovma/nginx/blob/main/default /etc/nginx/sites-available/default

# Copy the index
ADD https://github.com/komarovma/nginx/blob/main/index.html /usr/share/nginx/html/index.html

# Expose the port for access
EXPOSE 80/tcp

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
