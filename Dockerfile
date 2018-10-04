FROM centos
RUN yum -y install epel-release
RUN yum -y install nginx
RUN yum -y install openssh-server
RUN /usr/bin/ssh-keygen -A
CMD ["/bin/bash", "/start.sh"]