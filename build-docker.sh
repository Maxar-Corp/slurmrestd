#!/bin/bash -eu

rpm -i https://download.fedoraproject.org/pub/epel/7/SRPMS/Packages/s/slurm-20.11.9-1.el7.src.rpm

patch ~/rpmbuild/SPECS/slurm.spec spec.patch
cp db_*.patch ~/rpmbuild/SOURCES

rpmbuild -bb ~/rpmbuild/SPECS/slurm.spec
