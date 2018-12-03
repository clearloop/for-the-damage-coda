# Loader
In computer systems a loader is the part of an operating system that is responsible for loading programs and libraries. It is one of the essential stages in the process of starting a program, as it places programs into memory and prepares them for execution. Loading a program involves reading the contents of the executable file containing the program instructions into memory, and then carrying out other required preparatory tasks to prepare the executable for running. Once loading is complete, the operating system starts the program by passing control to the loaded program code.

## Responsibilities
In Unix, the loader is the handler for the system call execve().[1] The Unix loader's tasks include:
+ validation (permissions, memory requirements etc.);
+ copying the program image from the disk into main memory;
+ copying the command-line arguments on the stack;
+ initializing registers (e.g., the stack pointer);
+ jumping to the program entry point (_start).

In Microsoft Windows 7 and above, the loader is the LdrInitializeThunk function contained in ntdll.dll, that does the following:
+ initialisation of structures in the DLL itself (i.e. critical sections, module lists);
+ validation of executable to load;
+ creation of a heap (via the function RtlCreateHeap);
+ allocation of environment variable block and PATH block;
+ addition of executable and NTDLL to the module list (a doubly-linked list);
+ loading of KERNEL32.DLL to obtain several important functions, for instance BaseThreadInitThunk;
+ loading of executable's imports (i.e. dynamic-link libraries) recursively (check the imports' imports, their imports and so on);
+ in debug mode, raising of system breakpoint;
+ initialisation of DLLs;
+ garbage collection;
+ calling NtContinue on the context parameter given to the loader function (i.e. jumping to RtlUserThreadStart, that will start the executable)

## Relocating loaders
Some operating systems need relocating loaders, which adjust addresses (pointers) in the executable to compensate for variations in the address at which loading starts. The operating systems that need relocating loaders are those in which a program is not always loaded into the same location in the address space and in which pointers are absolute addresses rather than offsets from the program's base address. Some well-known examples are IBM's OS/360 for their System/360 mainframes, and its descendants, including z/OS for the z/Architecture mainframes.

## OS/360 & Derivatives
In OS/360 and descendant systems, the (privileged) operating system facility is called IEWFETCH,[2] and is an internal component of the OS Supervisor, whereas the (non-privileged) LOADER application can perform many of the same functions, plus those of the Linkage Editor, and is entirely external to the OS Supervisor (although it certainly uses many Supervisor services).
