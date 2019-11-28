FROM python:3.6
RUN cd /tmp \
    && wget -c https://download.oracle.com/otn_software/linux/instantclient/195000/instantclient-basic-linux.x64-19.5.0.0.0dbru.zip \
    && unzip *.zip \
    && mv instantclient_19_5/*.so* /lib/ \
    && rm -rf ./instantclient* \
    && apt update \
    && apt install libaio1 -y
