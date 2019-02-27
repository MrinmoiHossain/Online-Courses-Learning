$ ls -lF /boot


### Information
- "vmlinuz" is the compressed kernel
- "initramfs" contains a complete initial root filesystem which is loaded as a ramdisk, as well as some essential kernel modules (generally, device drivers) and the programs needed to load them, that are required to load the real filesystem, at which point it is discarded
- "config" contains all the details about how the kernel was compiled; it is not needed for system operation
- "System.map" lists the complete kernel symbol table; it is used only for debugging purposes