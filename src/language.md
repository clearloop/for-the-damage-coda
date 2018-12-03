# Language interoperability

Language interoperability is the capability of two different programming languages to natively interact as part of the same system. Interoperability is advantageous, because different programming language are optimized for specific tasks, and allowing them to communicate can create better systems.

There are many different ways programming languages are interoperable with one another. HTML, CSS, and javascript are a form of language interoperability as they work together to render webpages. Some object oriented languages can do this thanks to the hosting virtual machine (e.g. .NET CLI compliant languages in the Common Language Runtime and JVM compliant languages in the Java Virtual Machine).High-level programming languages are usually interoperable with some lower level languages, an example of this is Apple's Swift (programming language) and Objective-C.

### Object Models

To facilitate interoperability between languages, one method is to use object models. CORBA and COM are the most popular object models. These standards provide a base set of rules for how object oriented languages would implement their data models to allow for a language-neutral way of implementing objects that can be used in environments different from the one in which they were created.

#### ABI

In computer software, an application binary interface (ABI) is an interface between two binary program modules; often, one of these modules is a library or operating system facility, and the other is a program that is being run by a user.

#### API

In computer programming, an application programming interface (API) is a set of subroutine definitions, communication protocols, and tools for building software. In general terms, it is a set of clearly defined methods of communication among various components. A good API makes it easier to develop a computer program by providing all the building blocks, which are then put together by the programmer.

#### FFI

A foreign function interface (FFI) is a mechanism by which a program written in one programming language can call routines or make use of services written in another.

### Virtual machines

A Virtual machine is software that emulate operating systems, and acts a buffer between the language and the hardware. This allows a program to run on any hardware or OS. An advantage to VMs can use these type systems to ensure the correctness of participating languages and gives languages a common ground for their type information. Another advantage is that languages designed for VMs compile into a low level intermediate language. The intermediate language then goes through its own compiler or interpreter which can do more types of optimization.
