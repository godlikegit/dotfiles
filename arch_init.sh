#!/bin/bash

#Time zone
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc

#Localization
#sed -i 's/#en_US.UTF-8/en_US.UTF-8/g' /etc/locale.gen
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf

#Network configuration
echo nn > /etc/hostname
echo "
127.0.0.1 localhost
::1       localhost
127.0.0.1 nn.localdomain nn" >> /etc/hosts
#vim /etc/vconsole.conf

#Boot loader
grub-install --recheck /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

#fdisk a 3
#pacman -S intel-ucode
#pacman -S os-prober 
