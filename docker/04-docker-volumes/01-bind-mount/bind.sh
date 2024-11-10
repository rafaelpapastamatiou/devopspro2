# Binding a directory
docker container run -d -p 8080:80 --rm --name bind_mount_example_nginx -v $(pwd)/bind_data:/usr/share/nginx/html nginx

# Binding a single file
# docker container run -d -p 8080:80 --rm --name bind_mount_example_nginx -v $(pwd)/bind_data/index.html:/usr/share/nginx/html/index.html nginx