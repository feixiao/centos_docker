FROM centos:7.2.1511


MAINTAINER "frank" feixiao2020@sina.com



    
RUN rpm --rebuilddb && yum install -y sudo lrzsz 

# Cpp build 
RUN rpm --rebuilddb && yum install -y centos-release-scl \
    cmake make git subversion automake \
    libtool autoconf pkgconfig gengetopt passwd wget curl  

RUN rpm --rebuilddb && yum install -y  devtoolset-7 devtoolset-6 \
    devtoolset-6-libasan-devel devtoolset-6-libubsan-devel && \
    echo "source /opt/rh/devtoolset-6/enable" >> /etc/bashrc 


# GDB 7.9.1
RUN wget https://ftp.gnu.org/gnu/termcap/termcap-1.3.1.tar.gz  && \
    tar -xvf termcap-1.3.1.tar.gz && \
    cd termcap-1.3.1 && \
    ./configure && \
    make && make install && \
    cd ../ && rm -rf termcap-1.3.1 && rm -f termcap-1.3.1.tar.gz



RUN wget http://mirrors.ustc.edu.cn/gnu/gdb/gdb-7.9.1.tar.xz  && \
    tar -xf gdb-7.9.1.tar.xz && \
    cd gdb-7.9.1 && \
    rpm --rebuilddb && yum install  -y texinfo && \
    ./configure && \
    make && make install && \
    cd ../ && rm -rf gdb-7.9.1 &&  rm -f gdb-7.9.1.tar.xz


# Install ssh
RUN rpm --rebuilddb && yum -y install openssh-server && \
    yum clean all 
    
ADD ./start.sh /start.sh
RUN mkdir /var/run/sshd

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

RUN chmod 755 /start.sh
RUN ./start.sh

EXPOSE 22
ENTRYPOINT ["/usr/sbin/sshd", "-D"]

