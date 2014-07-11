# barbican
#
# VERSION 0.1

FROM centos:centos7
MAINTAINER CloudKeep Ops

# Add Repos and Install Packages
ADD yum.repos.d/ /etc/yum.repos.d
RUN yum update
RUN yum install -y python-pip gcc libffi-devel python-devel openssl-devel sqlite-devel

# Add Configs and Scripts
ADD scripts/ /opt/docker-scripts
ADD barbican/ /opt/barbican-src

RUN /opt/docker-scripts/install_barbican.sh

EXPOSE 9311
CMD /opt/docker-scripts/start_barbican.sh