FROM centos:7
RUN mkdir TDC
WORKDIR "/TDC"
COPY tdaccess_v340_Linux_FSA_64Bit.sfx .
RUN chmod 777 tdaccess_v340_Linux_FSA_64Bit.sfx
# RUN ./tdaccess_v340_Linux_FSA_64Bit.sfx