# Laptop

All things laptop-related that you don't have to do on a desktop.

## Power Management

<https://itsfoss.com/ubuntu-close-lid-suspend/>

```
# /etc/systemd/logind.conf

HandleSuspendKey=suspend
HandleLidSwitch=suspend
HandleLidSwitchDocked=suspend
```

## Headset

How to ensure my Bose bluetooth headset can connect.

### Getting Started

Easiest is to jump on Unity and pair using the interface. Hate to admit it but couldn't get past the bluez failure on pairing the device.

### Past solution that never worked

<https://wiki.archlinux.org/title/bluetooth_headset#Gnome_with_GDM>

```
# /var/lib/gdm3/.config/pulse/client.conf

autospawn = no
daemon-binary = /bin/true
```

```
sudo -ugdm mkdir -p /var/lib/gdm3/.config/systemd/user
sudo -ugdm ln -s /dev/null /var/lib/gdm3/.config/systemd/user/pulseaudio.socket
```
