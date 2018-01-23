FROM opensuse:latest


#
# Install dependencies
#
RUN zypper update -y && zypper install -y wget tar gcc gcc-c++ make libopenssl-devel


#
# Download and unzip Python 2.4.3 source
#
RUN wget --no-check-certificate https://www.python.org/ftp/python/2.4.3/Python-2.4.3.tgz -O /opt/Python-2.4.3.tgz
RUN tar -xzvf /opt/Python-2.4.3.tgz --directory /opt/


#
# Compile and install Python 2.4
#
RUN cd /opt/Python-2.4.3/ && ./configure
RUN cd /opt/Python-2.4.3/ && make
RUN cd /opt/Python-2.4.3/ && make install


#
# Remove Downloads and project folder
#
RUN rm -rvf /opt/Python*


#
# Default entrypoint is Python 2.4 shell
#
ENTRYPOINT python
