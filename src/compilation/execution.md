# Execution
Execution in computer and software engineering is __the process by which a computer or virtual machine executes the instructions of a computer program.__ Each instruction of a program is a description of a specific action to be carried out in order for a specific problem to be solved; as instructions of a program and therefore the actions they describe are being carried out by an executing machine, specific effects are produced in accordance to the semantics of the instructions being executed.

### Executable
In computing, executable code or an executable file or executable program, sometimes simply referred to as an executable or binary, causes a computer "to perform indicated tasks according to encoded instructions," as opposed to a data file that must be parsed by a program to be meaningful.

## Context of execution
The context in which execution takes place is crucial. Very few programs execute on a bare machine. Programs usually contain implicit and explicit assumptions about resources available at the time of execution. Most programs execute with the support of an operating system and run-time libraries specific to the source language that provide crucial services not supplied directly by the computer itself. This supportive environment, for instance, usually decouples a program from direct manipulation of the computer peripherals, providing more general, abstract services instead.

## Process
Prior to execution, a program must first be written. This is generally done in source code, which is then compiled at compile time (and statically linked at link time) to an executable. This executable is then invoked, most often by an operating system, which loads the program into memory (load time), possibly performs dynamic linking, and then begins execution by moving control to the entry point of the program; all these steps depend on the Application Binary Interface of the operating system. At this point execution begins and the program enters run time. The program then runs until it ends, either normal termination or a crash.

### Thread
In computer science, a thread of execution is __the smallest sequence of programmed instructions that can be managed independently by a scheduler__, which is typically a part of the operating system. The implementation of threads and processes differs between operating systems, but in most cases a thread is a component of a process. Multiple threads can exist within one process, executing concurrently and sharing resources such as memory, while different processes do not share these resources. In particular, the threads of a process share its executable code and the values of its dynamically allocated variables and non-thread-local global variables at any given time.

## Interpreter
__A system that executes a program__ is called an interpreter of the program. Loosely speaking, an interpreter actually does what the program says to do. This contrasts with a language translator that converts a program from one language to another. The most common language translators are compilers. Translators typically convert their source from a high-level, human readable language into a lower-level language (sometimes as low as native machine code) that is simpler and faster for the processor to directly execute. The idea is that the ratio of executions to translations of a program will be large; that is, a program need only be compiled once and can be run any number of times. This can provide a large benefit for translation versus direct interpretation of the source language. One trade-off is that development time is increased, because of the compilation. In some cases, only the changed files must be recompiled. Then the executable needs to be relinked. For some changes, the executable must be rebuilt from scratch. As computers and compilers become faster, this fact becomes less of an obstacle. Also, the speed of the end product is typically more important to the user than the development time.

### Bytecode interpreters
There is __a spectrum of possibilities between interpreting and compiling, depending on the amount of analysis performed before the program is executed.__ For example, Emacs Lisp is compiled to bytecode, which is a highly compressed and optimized representation of the Lisp source, but is not machine code (and therefore not tied to any particular hardware). This "compiled" code is then interpreted by a bytecode interpreter (itself written in C). The compiled code in this case is machine code for a virtual machine, which is implemented not in hardware, but in the bytecode interpreter. Such compiling interpreters are sometimes also called compreters. In a bytecode interpreter each instruction starts with a byte, and therefore bytecode interpreters have up to 256 instructions, although not all may be used. Some bytecodes may take multiple bytes, and may be arbitrarily complicated.

### Threaded code interpreters
Threaded code interpreters are __similar to bytecode interpreters but instead of bytes they use pointers.__ Each "instruction" is a word that points to a function or an instruction sequence, possibly followed by a parameter. The threaded code interpreter either loops fetching instructions and calling the functions they point to, or fetches the first instruction and jumps to it, and every instruction sequence ends with a fetch and jump to the next instruction. Unlike bytecode there is no effective limit on the number of different instructions other than available memory and address space. The classic example of threaded code is the Forth code used in Open Firmware systems: the source language is compiled into "F code" (a bytecode), which is then interpreted by a virtual machine.

### Abstract syntax tree interpreters
In the spectrum between interpreting and compiling, another approach is to __transform the source code into an optimized abstract syntax tree (AST),__ then execute the program following this tree structure, or use it to generate native code just-in-time. In this approach, each sentence needs to be parsed just once. As an advantage over bytecode, the AST keeps the global program structure and relations between statements (which is lost in a bytecode representation), and when compressed provides a more compact representation. Thus, using AST has been proposed as a better intermediate format for just-in-time compilers than bytecode. Also, it allows the system to perform better analysis during runtime.

### Just-in-time compilation
Further blurring the distinction between interpreters, bytecode interpreters and compilation is just-in-time compilation (JIT), __a technique in which the intermediate representation is compiled to native machine code at runtime.__ This confers the efficiency of running native code, at the cost of startup time and increased memory use when the bytecode or AST is first compiled. Adaptive optimization is a complementary technique in which the interpreter profiles the running program and compiles its most frequently executed parts into native code. Both techniques are a few decades old, appearing in languages such as Smalltalk in the 1980s.

### Self-interpreter
A self-interpreter is a programming language interpreter written in __a programming language which can interpret itself;__ an example is a BASIC interpreter written in BASIC. Self-interpreters are related to self-hosting compilers.

### Microcode
Microcode is a very commonly used technique "that imposes an interpreter between the hardware and the architectural level of a computer". As such, the microcode is __a layer of hardware-level instructions that implement higher-level machine code instructions or internal state machine sequencing in many digital processing elements.__ Microcode is used in general-purpose central processing units, as well as in more specialized processors such as microcontrollers, digital signal processors, channel controllers, disk controllers, network interface controllers, network processors, graphics processing units, and in other hardware.

# Inter-process Communication
In computer science, inter-process communication or interprocess communication (IPC) refers specifically to the mechanisms an operating system provides to __allow the processes to manage shared data__. Typically, applications can use IPC, categorized as clients and servers, where the client requests data and the server responds to client requests. Many applications are both clients and servers, as commonly seen in distributed computing. Methods for doing IPC are divided into categories which vary based on software requirements, such as performance and modularity requirements, and system circumstances, such as network bandwidth and latency.

IPC is very important to the design process for microkernels and nanokernels. Microkernels reduce the number of functionalities provided by the kernel. Those functionalities are then obtained by communicating with servers via IPC, increasing drastically the number of IPC compared to a regular monolithic kernel.

## Approaches

### File
A record stored on disk, or a record synthesized on demand by a file server, which can be accessed by multiple processes.

### Signal
A system message sent from one process to another, not usually used to transfer data but instead used to remotely command the partnered process.

### Socket
Data sent over a network interface, either to a different process on the same computer or to another computer on the network. Stream-oriented (TCP; data written through a socket requires formatting to preserve message boundaries) or more rarely message-oriented (UDP, SCTP).

### Unix domain socket
Similar to an internet socket but all communication occurs within the kernel. Domain sockets use the file system as their address space. Processes reference a domain socket as an inode, and multiple processes can communicate with one socket

### Message queue
A data stream similar to a socket, but which usually preserves message boundaries. Typically implemented by the operating system, they allow multiple processes to read and write to the message queue without being directly connected to each other.

### Pipe
A unidirectional data channel. Data written to the write end of the pipe is buffered by the operating system until it is read from the read end of the pipe. Two-way data streams between processes can be achieved by creating two pipes utilizing standard input and output.

### Named pipe
A pipe implemented through a file on the file system instead of standard input and output. Multiple processes can read and write to the file as a buffer for IPC data.

### Shared memory
Multiple processes are given access to the same block of memory which creates a shared buffer for the processes to communicate with each other.

### Message passing
Allows multiple programs to communicate using message queues and/or non-OS managed channels, commonly used in concurrency models.

### Memory-mapped file
A file mapped to RAM and can be modified by changing memory addresses directly instead of outputting to a stream. This shares the same benefits as a standard file.

## Application

### Remote procedure call interfaces
In distributed computing, a remote procedure call (RPC) is when a computer program causes a procedure (subroutine) to execute in a different address space (commonly on another computer on a shared network), which is coded as if it were a normal (local) procedure call, without the programmer explicitly coding the details for the remote interaction. That is, the programmer writes essentially the same code whether the subroutine is local to the executing program, or remote.[1] This is a form of client–server interaction (caller is client, executor is server), typically implemented via a request–response message-passing system. In the object-oriented programming paradigm, RPC calls are represented by remote method invocation (RMI). The RPC model implies a level of location transparency, namely that calling procedures is largely the same whether it is local or remote, but usually they are not identical, so local calls can be distinguished from remote calls. Remote calls are usually orders of magnitude slower and less reliable than local calls, so distinguishing them is important.

### Platform communication stack
utilize IPC mechanisms, but don't implement IPC themselves.

### Operating system communication stack
platform or programming language-specific APIs.

### Distributed object models
platform or programming language specific-APIs that use IPC, but do not themselves implement it.

# Runtime System
A runtime system, also called run-time system, primarily __implements portions of an execution model.__ This is in contrast to the runtime lifecycle phase of a program, during which the runtime system is in operation. Most languages have some form of runtime system, which implements control over the order in which work that was specified in terms of the language gets performed. Over the years, the meaning of the term 'runtime system' has been expanded to include nearly any behaviors that are dynamically determined during execution.

## Implementation details
When a program is to be executed, a __loader__ first performs the necessary memory setup and __links__ the program with any dynamically linked libraries it needs, and then the execution begins starting from the program's entry point. In some cases, a language or implementation will have these tasks done by the language runtime instead, though this is unusual in mainstream languages on common consumer operating systems.

## Runtime library
In computer programming, a runtime library (RTL) is __a set of low-level routines used by a compiler to invoke some of the behaviors of a runtime environment, by inserting calls to the runtime library into compiled executable binary.__ The runtime environment implements the execution model, built-in functions, and other fundamental behaviors of a programming language. During execution (run time) of that computer program, execution of those calls to the runtime library cause communication between the executable binary and the runtime environment. A runtime library often includes built-in functions for memory management or exception handling. Therefore, a runtime library is always specific to the platform and compiler.

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
