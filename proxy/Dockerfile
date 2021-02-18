FROM jwilder/nginx-proxy:alpine
RUN { \
        echo 'server_tokens off;'; \
        echo 'client_max_body_size 100m;'; \
        echo 'proxy_buffer_size          128k;'; \
        echo 'proxy_buffers              4 256k;'; \
        echo 'proxy_busy_buffers_size    256k;'; \
        echo '    proxy_connect_timeout   300;'; \
        echo '    proxy_send_timeout      300;'; \
        echo '    proxy_read_timeout      300;'; \
        echo '     send_timeout            300;'; \
        echo '    client_body_timeout     300;'; \
    } > /etc/nginx/conf.d/my_proxy.conf