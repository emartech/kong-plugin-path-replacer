FROM emarsys/kong-dev-docker:1.5.0-centos-2f54f20-cd6c51c

RUN luarocks install classic && \
    luarocks install kong-client 1.3.0
