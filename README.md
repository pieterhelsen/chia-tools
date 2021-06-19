# chia-tools
Some commandline tools to make the life of the chia farmer easier

# Usage

## hdd-serial

This script retrieves serial number information for your hdd files. 
Handy for bookkeeping purposes.

```
$ . ./hdd-serial.sh /dev/sda
$ E: ID_SERIAL=KINGSTON_SA400S37241G_50126B7371D16C18
$ E: ID_SERIAL_SHORT=50026B7380F16B41
```

There is also a 'full' option that displays the full list of metadata, including model number.

```
$ . ./hdd-serial.sh /dev/sda full
$ P: /devices/pci0000:00/0000:00:1f.2/ata1/host0/target0:0:0/0:0:0:0/block/sda
$ ...
$ E: ID_MODEL=KINGSTON_SA400S37240G
$ ...
$ E: ID_SERIAL=KINGSTON_SA400S37241G_50126B7371D16C18
$ E: ID_SERIAL_SHORT=50026B7380F16B41
$ ...

```

## create-mountdirs

This script creates mount points for disks. I give each disk a 2-digit identifier and mount the disk to the same drive, irregardless of which system I am on. 
A disk labeled '05' will be mounted to the '/mnt/chia/05' folder on each system. 

This script quickly creates mount points and comes in handy when provisioning a new system.
The script takes two parameters:

- base dir: the base directory for your mount points
- number of dirs: the number of mount points you wish to create (default: 99)

Note1: dirs will be created with leading 0's
Note2: when creating more than 100 directories, only one leading zero will be added (ex. 01, 12, 102)

```
$ . ./create-mountdirs.sh /mnt/chia 50
$ Creating directory: /mnt/chia/01
$ Creating directory: /mnt/chia/02
$ ...
$ Creating directory: /mnt/chia/50
```
