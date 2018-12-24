# Preprocessor
In computer science, a preprocessor is __a program that processes its input data to produce output that is used as input to another program.__ The output is said to be a preprocessed form of the input data, which is often used by some subsequent programs like compilers. The amount and kind of processing done depends on the nature of the preprocessor; some preprocessors are only capable of performing relatively simple textual substitutions and macro expansions, while others have the power of full-fledged programming languages.

## Lexical preprocessors
Lexical preprocessors are __the lowest-level of preprocessors as they only require lexical analysis__, that is, they operate on the source text, prior to any parsing, by performing simple substitution of tokenized character sequences for other tokenized character sequences, according to user-defined rules. They typically perform macro substitution, textual inclusion of other files, and conditional compilation or inclusion.

## Syntactic preprocessors
Syntactic preprocessors were introduced with the Lisp family of languages. Their role is __to transform syntax trees according to a number of user-defined rules.__ For some programming languages, the rules are written in the same language as the program (compile-time reflection). This is the case with Lisp and OCaml. Some other languages rely on a fully external language to define the transformations, such as the XSLT preprocessor for XML, or its statically typed counterpart CDuce.

### Customizing syntax
A good example of syntax customization is the existence of two different syntaxes in the Objective Caml programming language. __Programs may be written indifferently using the "normal syntax" or the "revised syntax", and may be pretty-printed with either syntax on demand.__

### Extending a language
The best examples of language extension through macros are found in the Lisp family of languages. While the languages, by themselves, __are simple dynamically typed functional cores__, the standard distributions of Scheme or Common Lisp permit imperative or object-oriented programming, as well as static typing. Almost all of these features are implemented by syntactic preprocessing, although it bears noting that the "macro expansion" phase of compilation is handled by the compiler in Lisp. This can still be considered a form of preprocessing, since it takes place before other phases of compilation.

### Specializing a language
One of the unusual features of the Lisp family of languages is the possibility of __using macros to create an internal DSL__. Typically, in a large Lisp-based project, a module may be written in a variety of such minilanguages, one perhaps using a SQL-based dialect of Lisp, another written in a dialect specialized for GUIs or pretty-printing, etc. Common Lisp's standard library contains an example of this level of syntactic abstraction in the form of the LOOP macro, which implements an Algol-like minilanguage to describe complex iteration, while still enabling the use of standard Lisp operators.

## General purpose preprocessor
Most preprocessors are specific to a particular __data processing task (e.g., compiling the C language).__ A preprocessor may be promoted as being general purpose, meaning that it is not aimed at a specific usage or programming language, and is intended to be used for a wide variety of text processing tasks.

M4 is probably the most well known example of such a general purpose preprocessor, although the C preprocessor is sometimes used in a non-C specific role. Examples:

+ using C preprocessor for JavaScript preprocessing.[2]
+ using C preprocessor for devicetree processing within the Linux kernel.[3]
+ using M4 (see on-article example) or C preprocessor[4] as a template engine, to HTML generation.
+ imake, a make interface using the C preprocessor, written for the X Window System but now deprecated in favour of automake.
+ grompp, a preprocessor for simulation input files for GROMACS (a fast, free, open-source code for some problems in computational chemistry) which calls the system C preprocessor (or other preprocessor as determined by the simulation input file) to parse the topology, using mostly the #define and #include mechanisms to determine the effective topology at grompp run time.
+ using GPP for preprocessing markdown files[5]
