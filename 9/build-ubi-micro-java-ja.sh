#!/bin/bash

microcontainer=$(buildah from localhost/kakinari/ubi-micro-ja)
micromount=$(buildah mount $microcontainer)
dnf install \
--installroot $micromount \
--releasever=/ \
--setopt install_weak_deps=false \
--setopt=reposdir=/etc/yum.repos.d/ \
--nodocs -y \
java-latest-openjdk
echo ". /etc/profile" > $micromount/root/.bashrc
echo "export LANG=ja_JP.UTF-8" >> $micromount/root/.bashrc
echo "export LANGUAGE=ja_JP:ja" >> $micromount/root/.bashrc
echo "export TZ=JST-9" >> $micromount/root/.bashrc

dnf clean all \
--installroot $micromount

buildah umount $microcontainer
buildah commit $microcontainer kakinari/ubi-micro-java-ja

