# Virtual Machine
In computing, a virtual machine (VM) is an emulation of a computer system. Virtual machines are based on computer architectures and provide functionality of a physical computer. Their implementations may involve specialized hardware, software, or a combination.

## System Virtual Machines
The desire to run multiple operating systems was the initial motive for virtual machines, so as to allow time-sharing among several single-tasking operating systems. In some respects, a system virtual machine can be considered a generalization of the concept of virtual memory that historically preceded it. IBM's CP/CMS, the first systems to allow full virtualization, implemented time sharing by providing each user with a single-user operating system, the Conversational Monitor System (CMS). Unlike virtual memory, a system virtual machine entitled the user to write privileged instructions in their code. This approach had certain advantages, such as adding input/output devices not allowed by the standard system.

## Process Virtual Machines
A process VM, sometimes called an application virtual machine, or Managed Runtime Environment (MRE), runs as __a normal application inside a host OS and supports a single process. It is created when that process is started and destroyed when it exits.__ Its purpose is to provide a platform-independent programming environment that abstracts away details of the underlying hardware or operating system and allows a program to execute in the same way on any platform.

## Full virtualization
In full virtualization, the virtual machine simulates enough hardware to __allow an unmodified "guest" OS (one designed for the same instruction set) to be run in isolation.__ This approach was pioneered in 1966 with the IBM CP-40 and CP-67, predecessors of the VM family.

### Hardware-assisted virtualization
In hardware-assisted virtualization, the hardware __provides architectural support that facilitates building a virtual machine monitor and allows guest OSes to be run in isolation.__ Hardware-assisted virtualization was first introduced on the IBM System/370 in 1972,[citation needed] for use with VM/370, the first virtual machine operating system offered by IBM as an official product.

### Operating-system-level virtualization
In operating-system-level virtualization, __a physical server is virtualized at the operating system level, enabling multiple isolated and secure virtualized servers to run on a single physical server.__ The "guest" operating system environments share the same running instance of the operating system as the host system. Thus, the same operating system kernel is also used to implement the "guest" environments, and applications running in a given "guest" environment view it as a stand-alone system. The pioneer implementation was FreeBSD jails; other examples include Docker, Solaris Containers, OpenVZ, Linux-VServer, LXC, AIX Workload Partitions, Parallels Virtuozzo Containers, and iCore Virtual Accounts.
