apt-get -y install kvm libvirt-bin libvirt-dev
virsh net-destroy default
virsh net-undefine default

cat <<EOF > /etc/network/interfaces
auto lo
    iface lo inet loopback

auto eth0
    iface eth0 inet manual

auto br0
    iface br0 inet dhcp
    bridge_ports eth0

EOF

usermod -a -G libvirtd vagrant

grep -v ^security_driver /etc/libvirt/qemu.conf > /tmp/qemu.conf
mv /tmp/qemu.conf /etc/libvirt/qemu.conf

echo 'security_driver = "none"' >> /etc/libvirt/qemu.conf
