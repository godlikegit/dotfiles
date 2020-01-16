#!/bin/bash
#dd if=/dev/zero of=/dev/sda bs=512K count=1

#Partition the disks
echo -e "n\n\n\n\n+1G\nn\n\n\n\n+8G\nn\n\n\n\n\nw\n" | fdisk /dev/sda

#Format the partitions
mkswap /dev/sda1
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda3

#Mount the file systems
swapon /dev/sda1
mount /dev/sda2 /mnt
mkdir /mnt/home
mount /dev/sda3 /mnt/home

#Select the mirrors
cd /etc/pacman.d
cp mirrorlist _mirrorlist
cat _mirrorlist | grep China -A 1 | grep -v '-' > mirrorlist
rm _mirrorlist
cd

#Install essential packages
pacstrap /mnt base linux linux-firmware vim grub dhcpcd

#Fstab
genfstab -U /mnt >> /mnt/etc/fstab

#Chroot
wget raw.githubusercontent.com/godlikegit/dotfiles/master/arch_init.sh
mv arch_init.sh /mnt
arch-chroot /mnt /bin/bash /arch_init.sh
rm /mnt/arch_init.sh

umount /mnt
reboot
