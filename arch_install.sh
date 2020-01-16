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
pacstrap /mnt base vim grub dhcpcd

#Fstab
genfstab -U /mnt >> /mnt/etc/fstab

#Chroot
arch-chroot /mnt

#Time zone
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc

#Localization
sed -i 's/#en_US.UTF-8/en_US.UTF-8/g' /etc/locale.gen
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

