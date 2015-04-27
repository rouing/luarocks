FROM centos

MAINTAINER [Alejandro Baez](https://twitter.com/a_baez)

LUAROCKS_VERSION 2.2.1

# Dependencies
RUN yum install -y lua git

# Build Luarocks
WORKDIR /tmp

RUN git clone -t v$LUAROCKS_VERSION https://github.com/keplerproject/luarocks.git

RUN ./configure --lua-version=5.2 --prefix=/usr/local --with-lua=/usr

RUN make build

RUN make install

RUN rm /tmp/luarocks -rf

WORKDIR /


