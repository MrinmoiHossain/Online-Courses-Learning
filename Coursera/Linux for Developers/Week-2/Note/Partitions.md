$ sudo /sbin/fdisk -l

### Increasing Or decreasing file sytem
- increase the size of the partition, and then increase the filesystem size
- decrease the size of the filesystem and then the partition

$ sudo mkfs -t ext4 /dev/sda10

$ sudo mkfs.ext4 /dev/sda10

$ gparted