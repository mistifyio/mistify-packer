apt-get -y install python-software-properties
apt-get -y install software-properties-common
add-apt-repository ppa:zfs-native/stable
apt-get update
apt-get -y install libzfs-dev ubuntu-zfs

# in preseed - I never got it to partition the disk without 
# mounting the partition, so undo that
umount /zfs
grep -v zfs /etc/fstab > /tmp/fstab
mv /tmp/fstab /etc/fstab

zpool create guests sda6
zfs create guests/images
zfs create guests/guests
