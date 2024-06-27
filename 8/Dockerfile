FROM rockylinux/rockylinux:8
ENV container docker
RUN dnf -y upgrade;\
dnf -y install glibc-langpack-ja openssh-clients procps;\
dnf -y clean all; \
rm -rf /var/cache/dnf/*;\
sed -i 's/.*/LANG=ja_JP.UTF-8\nLANGUAGE=ja_JP:ja/' /etc/locale.conf;
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
CMD [ "/usr/sbin/init" ]
WORKDIR /root
