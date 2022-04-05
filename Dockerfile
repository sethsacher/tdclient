FROM centos:7
RUN yum makecache
RUN yum -y install expect
RUN mkdir TDC
WORKDIR "/TDC"
COPY tdaccess_v340_Linux_FSA_64Bit.sfx .
COPY installtd .
RUN chmod 777 tdaccess_v340_Linux_FSA_64Bit.sfx
RUN chmod 777 installtd
RUN ./tdaccess_v340_Linux_FSA_64Bit.sfx
RUN ./installtd