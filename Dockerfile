FROM fedora

RUN mkdir -p /opt/calibre/
RUN yum install -y calibre
VOLUME  ["/opt/calibre"]
EXPOSE 8080

ENTRYPOINT      ["/usr/bin/calibre-server", "--with-library=/opt/calibre"]
