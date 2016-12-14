FROM       xemuliam/hdf-base
MAINTAINER Viacheslav Kalashnikov <xemuliam@gmail.com>
ENV        BANNER_TEXT="" \
           S2S_PORT=""
COPY       start_hdf.sh /${HDF_HOME}/
VOLUME     /opt/datafiles \
           /opt/scriptfiles \
           /opt/certfiles
WORKDIR    ${HDF_HOME}
RUN        chmod +x ./start_hdf.sh
RUN        apk add --update bash && rm -rf /var/cache/apk/*
CMD        ./start_hdf.sh
