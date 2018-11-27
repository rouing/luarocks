FROM docker.rouing.me/docker/lua:5.1

MAINTAINER [William C Ardoin](https://git.rouing.me/)

ENV LUAROCKS_VERSION 2.4.4
ENV LUAROCKS_INSTALL luarocks-$LUAROCKS_VERSION
ENV TMP_LOC /tmp/luarocks

RUN apk add zip gettext --no-cache

# Build Luarocks
RUN curl -OL \
    https://luarocks.org/releases/${LUAROCKS_INSTALL}.tar.gz

RUN tar xzf $LUAROCKS_INSTALL.tar.gz && \
    mv $LUAROCKS_INSTALL $TMP_LOC && \
    rm $LUAROCKS_INSTALL.tar.gz

WORKDIR $TMP_LOC

RUN ./configure \
  --with-lua=$WITH_LUA \
  --with-lua-include=$LUA_INCLUDE \
  --with-lua-lib=$LUA_LIB

RUN make build

RUN make install

WORKDIR /

RUN rm $TMP_LOC -rf