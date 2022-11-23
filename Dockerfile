FROM centos:7

RUN yum -y install \
        epel-release && \
    yum -y update && \
    yum -y install \
        epel-rpm-macros \
        rpm-build \
        sssd-client

RUN yum -y install \
        autoconf \
        automake \
        check-devel \
        desktop-file-utils \
        freeipmi-devel \
        gcc \
        gtk2-devel \
        hdf5-devel \
        http-parser-devel \
        hwloc-devel \
        json-c-devel \
        libcurl-devel \
        libjwt-devel \
        libssh2-devel \
        libyaml-devel \
        lua-devel \
        lz4-devel \
        make \
        mariadb-devel \
        munge-devel \
        numactl-devel \
        pam-devel \
        perl-ExtUtils-MakeMaker \
        perl-devel \
        perl-interpreter \
        perl-macros \
        perl-podlators \
        pkgconfig \
        pmix-devel \
        python3 \
        rdma-core-devel \
        readline-devel \
        rrdtool-devel \
        systemd \
        zlib-devel && \
    yum -y clean all
