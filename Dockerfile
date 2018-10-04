FROM centos
RUN yum -y install epel-release
RUN yum -y install nginx
RUN yum -y install openssh-server
RUN /usr/bin/ssh-keygen -A
RUN /usr/bin/echo P@ssw0rd|/usr/bin/passwd root --stdin
ADD start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]