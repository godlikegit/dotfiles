#!/bin/bash

mkswap /dev/sda1
mkfs.ext4 /dev/sda2
swapon /dev/sda1
mount /dev/sda2 /

cd /etc/pacman.d
cp mirrorlist _mirrorlist
cat _mirrorlist | grep China -A 1 | grep -v '-' > mirrorlist
rm _mirrorlist
cd

pacstrap /mnt base
