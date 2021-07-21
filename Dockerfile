FROM busybox
USER root
ENV http_proxy http://9.196.156.29:3128
ENV https_proxy http://9.196.156.29:3128
RUN wget http://www.rpmfind.info/linux/fedora-secondary/releases/34/Everything/ppc64le/os/Packages/q/qemu-user-static-5.2.0-5.fc34.1.ppc64le.rpm
RUN rpm2cpio qemu-user-static-5.2.0-5.fc34.1.ppc64le.rpm | cpio -idmv
#COPY ./usr/bin/qemu-x86_64-static .
#COPY ./qemu-aarch64-static .
#ENV QEMU_BIN_DIR=/usr/bin
#ADD ./register.sh /register
#ADD https://raw.githubusercontent.com/qemu/qemu/master/scripts/qemu-binfmt-conf.sh /qemu-binfmt-conf.sh
#RUN chmod +x /qemu-binfmt-conf.sh
#COPY qemu-*-static /usr/bin/
#ENTRYPOINT ["/register"]
CMD sleep 6000
