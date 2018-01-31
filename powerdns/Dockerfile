FROM centos:7
MAINTAINER holysugar

# http://missingsmth.com/centos-7-powerdns-installation-guide/

RUN yum install -y epel-release && \
    yum -y update && \
    yum -y install pdns pdns-backend-mysql pdns-tools \
                   pdns-recursor pdns-server \
                   bind-utils iproute

ADD entrykit      /usr/bin/
ADD dockerize     /usr/bin/
ADD pdns.conf     /etc/pdns/
ADD recursor.conf /etc/pdns-recursor/

RUN /usr/bin/entrykit --symlink

EXPOSE 53
ENTRYPOINT [  \
    "prehook", "dockerize -timeout 60s -wait tcp://db:3306", "--", \
    "codep", "/usr/sbin/pdns_recursor", "/usr/sbin/pdns_server" ]
