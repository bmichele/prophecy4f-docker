FROM ubuntu:16.04
ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

# OS update, then clean up
RUN apt-get -yq update && \
    apt-get -yq upgrade && \
    apt-get -yq --no-install-recommends install \
        software-properties-common \
        apt-transport-https \
        ca-certificates \
        aptitude \
        wget \
        unzip \
        gfortran \
        g++ \
        cmake \
        make && \
    apt-get clean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/archive/* /var/lib/apt/lists/*

RUN wget https://prophecy4f.hepforge.org/downloads/Prophecy4f-3.0.tar.gz
RUN wget https://collier.hepforge.org/downloads/collier-1.2.4.tar.gz

# Install collier
RUN tar -zxvf collier-1.2.4.tar.gz
RUN cd COLLIER-1.2.4/build && cmake .. && make
RUN echo "/COLLIER-1.2.4" > libcollier.conf
RUN cp libcollier.conf /etc/ld.so.conf.d && ldconfig

# Install Prophecy4f
RUN tar -zxvf Prophecy4f-3.0.tar.gz
WORKDIR Prophecy4f-3.0
RUN mkdir inputdir
RUN make COLLIERDIR=/COLLIER-1.2.4
