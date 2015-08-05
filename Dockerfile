FROM centos

MAINTAINER [Alejandro Baez](https://twitter.com/a_baez)

ENV LUAROCKS_VERSION 2.2.2

# Dependencies
RUN yum install -y lua lua-devel git make

# Build Luarocks
RUN git clone --branch v$LUAROCKS_VERSION https://github.com/keplerproject/luarocks.git /tmp/luarocks

WORKDIR /tmp/luarocks

RUN ./configure --lua-version=5.1 --prefix=/usr/local --with-lua=/usr

RUN make build

RUN make install

RUN rm /tmp/luarocks -rf

WORKDIR /

