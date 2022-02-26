# Laptop-specific configuration

Some things should be automated but would require `ansible` or other ways to avoid repeatition efficiently.
For now, let's just list them here.

### Lock when closing lid

```
vim /etc/systemd/logind.conf
```

Add or uncomment the following line:

```
HandleLidSwitch=suspend
```
