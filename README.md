# Workstation Install

```
# nvidia drivers
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-367
```

```
# generic
sudo apt-get update
sudo apt-get install wget htop tree curl git

# utilities
sudo apt-get install bmon iftop
```

### zsh

```
sudo apt-get install zsh
chsh -s $(which zsh)
# logout

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```
