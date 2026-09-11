#@TYPE: Machine
#@NAME: Hectronic H6089
#@DESCRIPTION: Machine configuration for H6089

require conf/machine/intel-corei7-64.conf

KMACHINE_h6089-64 = "intel-x86-64-${LINUX_KERNEL_TYPE}"

MACHINE_FEATURES = " serial"
MACHINE_FEATURES += " ext2"
MACHINE_FEATURES += " vfat"
MACHINE_FEATURES += " keyboard"
MACHINE_FEATURES += " pci"
MACHINE_FEATURES += " usbhost"
MACHINE_FEATURES += " ipv6"
MACHINE_FEATURES += " pcbios"
MACHINE_FEATURES += " efi"

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS = " kernel-module-uc2-linux"

# Remove from intel BSP
MACHINE_EXTRA_RRECOMMENDS:remove = " kernel-modules linux-firmware"

APPEND = "rootwait reboot=pci ramdisk_size=100000 console=ttyS4,115200"
SERIAL_CONSOLES = "115200;ttyS4"

USE_VT = "0"

TARGET_ARCH = "x86_64"

EFI_PROVIDER = ""

PREFERRED_PROVIDER_virtual/bootloader = "grub"

