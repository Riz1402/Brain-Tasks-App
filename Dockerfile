# Use official Nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy built static files into Nginx web directory
COPY app/ /usr/share/nginx/html

# Expose port 3000
EXPOSE 3000

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]