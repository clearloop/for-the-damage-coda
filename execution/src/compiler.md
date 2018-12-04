# Compiler
A compiler is computer software that __transforms computer code written in one programming language (the source language) into another programming language (the target language).__ Compilers are a type of translator that support digital devices, primarily computers. The name compiler is primarily used for programs that translate source code from a high-level programming language to a lower level language (e.g., assembly language, object code, or machine code) to create an executable program.

A compiler is likely to perform many or all of the following operations: preprocessing, lexical analysis, parsing, semantic analysis (syntax-directed translation), conversion of input programs to an intermediate representation, code optimization and code generation. Compilers implement these operations in phases that promote efficient design and correct transformations of source input to target output. Program faults caused by incorrect compiler behavior can be very difficult to track down and work around; therefore, compiler implementers invest significant effort to ensure compiler correctness.

## Just-in-time
In computing, just-in-time (JIT) compilation, (also dynamic translation or run-time compilations), __is a way of executing computer code that involves compilation during execution of a program – at run time – rather than prior to execution.__ Most often, this consists of source code or more commonly bytecode translation to machine code, which is then executed directly. A system implementing a JIT compiler typically continuously analyses the code being executed and identifies parts of the code where the speedup gained from compilation or recompilation would outweigh the overhead of compiling that code.

## Ahead-of-time compilation
In computer science, ahead-of-time (AOT) compilation is the act of compiling a higher-level programming language such as C or C++, or an intermediate representation such as Java bytecode or .NET Framework Common Intermediate Language (CIL) code, __into a native (system-dependent) machine code so that the resulting binary file can execute natively.__

## Transcompilation
A source-to-source compiler, transcompiler or transpiler is __a type of compiler that takes the source code of a program written in one programming language as its input and produces the equivalent source code in another programming language.__ A source-to-source compiler translates between programming languages that operate at approximately the same level of abstraction, while a traditional compiler translates from a higher level programming language to a lower level programming language. For example, a source-to-source compiler may perform a translation of a program from Pascal to C. An automatic parallelizing compiler will frequently take in a high level language program as an input and then transform the code and annotate it with parallel code annotations (e.g., OpenMP) or language constructs (e.g. Fortran's forall statements).

## Recompilation
In computer science, dynamic recompilation (sometimes abbreviated to dynarec or the pseudo-acronym DRC) is __a feature of some emulators and virtual machines, where the system may recompile some part of a program during execution.__ By compiling during execution, the system can tailor the generated code to reflect the program's run-time environment, and potentially produce more efficient code by exploiting information that is not available to a traditional static compiler.

## Hardware Compilers
hardware compilers (also known as syntheses tools) are compilers whose output is __a description of the hardware configuration instead of a sequence of instructions.__

+ The output of these compilers target computer hardware at a very low level, for example a field-programmable gate array (FPGA) or structured application-specific integrated circuit (ASIC).Such compilers are said to be hardware compilers, because the source code they compile effectively controls the final configuration of the hardware and how it operates. The output of the compilation is only an interconnection of transistors or lookup tables.

+ An example of hardware compiler is XST, the Xilinx Synthesis Tool used for configuring FPGAs. Similar tools are available from Altera, Synplicity, Synopsys and other hardware vendors.

# Intermediate representation
An Intermediate representation (IR) is __the data structure or code used internally by a compiler or virtual machine to represent source code.__ An IR is designed to be conducive for further processing, such as optimization and translation. A "good" IR must be accurate – capable of representing the source code without loss of information – and independent of any particular source or target language. An IR may take one of several forms: an in-memory data structure, or a special tuple- or stack-based code readable by the program. In the latter case it is also called an intermediate language.
