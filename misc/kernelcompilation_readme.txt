1. This is in the old kernel

poopi@poopi-HP-Notebook:~$ uname -r
4.13.0-37-generic

2. This is in the new kernel. 
After reebot, the new kernel is set as the default kernel.

poopi@poopi-HP-Notebook:~$ uname -r
4.16.1

3.From the new kernel see all installed kernels
$uname -ar
Linux poopi-HP-Notebook 4.16.1 #1 SMP Tue Apr 10 19:45:28 IST 2018 x86_64 x86_64 x86_64 GNU/Linux

$ dpkg --list | grep linux-image
rc  linux-image-4.10.0-28-generic                               4.10.0-28.32~16.04.2                         amd64        Linux kernel image for version 4.10.0 on 64 bit x86 SMP
rc  linux-image-4.13.0-36-generic                               4.13.0-36.40~16.04.1                         amd64        Linux kernel image for version 4.13.0 on 64 bit x86 SMP
ii  linux-image-4.13.0-37-generic                               4.13.0-37.42~16.04.1                         amd64        Linux kernel image for version 4.13.0 on 64 bit x86 SMP
ii  linux-image-4.13.0-38-generic                               4.13.0-38.43~16.04.1                         amd64        Linux kernel image for version 4.13.0 on 64 bit x86 SMP
rc  linux-image-extra-4.10.0-28-generic                         4.10.0-28.32~16.04.2                         amd64        Linux kernel extra modules for version 4.10.0 on 64 bit x86 SMP
rc  linux-image-extra-4.13.0-36-generic                         4.13.0-36.40~16.04.1                         amd64        Linux kernel extra modules for version 4.13.0 on 64 bit x86 SMP
ii  linux-image-extra-4.13.0-37-generic                         4.13.0-37.42~16.04.1                         amd64        Linux kernel extra modules for version 4.13.0 on 64 bit x86 SMP
ii  linux-image-extra-4.13.0-38-generic                         4.13.0-38.43~16.04.1                         amd64        Linux kernel extra modules for version 4.13.0 on 64 bit x86 SMP
ii  linux-image-generic-hwe-16.04                               4.13.0.38.57                                 amd64        Generic Linux kernel image
 
Note that the old kernel is present.

