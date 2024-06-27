#!/bin/bash

microcontainer=$(buildah from registry.access.redhat.com/ubi9/ubi-micro)
micromount=$(buildah mount $microcontainer)
dnf install \
--installroot $micromount \
--releasever=/ \
--setopt install_weak_deps=false \
--setopt=reposdir=/etc/yum.repos.d/ \
--nodocs -y \
glibc-langpack-ja
dnf clean all \
--installroot $micromount

buildah umount $microcontainer
buildah commit $microcontainer kakinari/ubi-micro-ja:9
