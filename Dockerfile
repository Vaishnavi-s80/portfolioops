# Step 1 — Use official Nginx image as base
FROM nginx:alpine

# Step 2 — Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Step 3 — Copy our portfolio into nginx's serving folder
COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

# Step 4 — Copy our custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Step 5 — Expose port 80
EXPOSE 80

# Step 6 — Start nginx
CMD ["nginx", "-g", "daemon off;"]