FROM openshift/python

LABEL io.openshift.s2i.scripts-url="image:///opt/app-root/s2i/bin" \
      io.s2i.scripts-url="image:///opt/app-root/s2i/bin"

COPY assemble /opt/app-root/s2i/bin/assemble
COPY run /opt/app-root/s2i/bin/run
COPY save-artifacts /opt/app-root/s2i/bin/save-artifacts
COPY usage /opt/app-root/s2i/bin/usage
