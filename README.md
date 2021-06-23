# Introduction
Files to create container image for qemu user space emulator on Power

## Preparation

You'll need to get the qemu static binaries for Power.
Follow these steps to extract it from Fedora rpm and copy it to the current directory.

```
wget http://www.rpmfind.info/linux/fedora-secondary/releases/34/Everything/ppc64le/os/Packages/q/qemu-user-static-5.2.0-5.fc34.1.ppc64le.rpm
rpm2cpio qemu-user-static-5.2.0-5.fc34.1.ppc64le.rpm | cpio -idmv
cp ./usr/bin/qemu-x86_64-static .
cp ./qemu-aarch64-static .
```

If you want to add additional arch emulators copy the same to the current directory.

Ref: https://cloudgeekz.medium.com/working-with-intel-containers-on-power-1b91873d94a0

## Build and Push container

```
podman build -t quay.io/bpradipt/qemu-user-static:ppc64le .
podman push quay.io/bpradipt/qemu-user-static:ppc64le .
```

# Acknowledgement
This is derived from - https://github.com/multiarch/qemu-user-static.git


