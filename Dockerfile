# Use an official Nginx base image
FROM nginx:alpine

# Copy the website files into the Nginx HTML directory
COPY resume.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]

