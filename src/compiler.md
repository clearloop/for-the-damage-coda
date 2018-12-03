# Compiler
A compiler is computer software that transforms computer code written in one programming language (the source language) into another programming language (the target language). Compilers are a type of translator that support digital devices, primarily computers. The name compiler is primarily used for programs that translate source code from a high-level programming language to a lower level language (e.g., assembly language, object code, or machine code) to create an executable program.

## Source to Source
A source-to-source compiler is a type of compiler that takes a high-level language as its input and outputs a high-level language. For example, an automatic parallelizing compiler will frequently take in a high-level language program as an input and then transform the code and annotate it with parallel code annotations (e.g. OpenMP) or language constructs (e.g. Fortran's DOALL statements).

## Bytecode
Bytecode compilers that compile to assembly language of a theoretical machine, like some Prolog implementations

+ This Prolog machine is also known as the Warren Abstract Machine (or WAM).

+ Bytecode compilers for Java, Python are also examples of this category.

## Just-in-time
In computing, just-in-time (JIT) compilation, (also dynamic translation or run-time compilations)[1], is a way of executing computer code that involves compilation during execution of a program – at run time – rather than prior to execution.[2] Most often, this consists of source code or more commonly bytecode translation to machine code, which is then executed directly. A system implementing a JIT compiler typically continuously analyses the code being executed and identifies parts of the code where the speedup gained from compilation or recompilation would outweigh the overhead of compiling that code.

## Hardware Compilers
hardware compilers (also known as syntheses tools) are compilers whose output is a description of the hardware configuration instead of a sequence of instructions.

+ The output of these compilers target computer hardware at a very low level, for example a field-programmable gate array (FPGA) or structured application-specific integrated circuit (ASIC).Such compilers are said to be hardware compilers, because the source code they compile effectively controls the final configuration of the hardware and how it operates. The output of the compilation is only an interconnection of transistors or lookup tables.

+ An example of hardware compiler is XST, the Xilinx Synthesis Tool used for configuring FPGAs. Similar tools are available from Altera, Synplicity, Synopsys and other hardware vendors.
