# Workstation Install

## nvidia drivers 18.04

I've kept the modifications from the other instructions below after upgrading.

https://www.mvps.net/docs/install-nvidia-drivers-ubuntu-18-04-lts-bionic-beaver-linux/

```
sudo apt-get purge nvidia*
sudo add-apt-repository ppa:graphics-drivers
sudo apt update
sudo apt install nvidia-driver-435 nvidia-settings
sudo reboot
```

## nvidia drivers

https://askubuntu.com/questions/841876/how-to-disable-nouveau-kernel-driver

1. Install some packages for build kernel:

```
sudo apt install dkms build-essential linux-headers-generic
```

2. Block and disable nouveau kernel driver:

```
sudo vim /etc/modprobe.d/blacklist.conf
```

3. Insert follow lines to the blacklist.conf:

```
blacklist nouveau
blacklist lbm-nouveau
options nouveau modeset=0
alias nouveau off
alias lbm-nouveau off
```

4. Disable the Kernel nouveau by typing the following commands(nouveau-kms.conf may not exist,it is ok):

```
echo options nouveau modeset=0 | sudo tee -a /etc/modprobe.d/nouveau-kms.conf
```

5. build the new kernel by:

```
sudo update-initramfs -u
```

6. Reboot

```
sudo reboot now
```

7. Install downloaded drivers

```
sudo chmod +x NVIDIA-Linux-x86_64-384.98.run
sudo bash ./NVIDIA-Linux-x86_64-384.98.run
```

## Intel freeze issue

```
vim /etc/default/grub

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash intel_idle.max_cstate=1"

sudo update-grub
sudo reboot
```

