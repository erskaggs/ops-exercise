server {
  listen <%= @port %>;

  include hhvm.conf;

  access_log /var/log/nginx/<%= @name %>.access.log;
  error_log /var/log/nignx/<%= @name %>.error.log;

  root <%= @docroot %>;
  index index.php

  location / {
    try_files $uri $uri/ /index.php?$args;
  }
}
