Defender
============

A sand-boxing mechanism to run malicious/untrusted C and C++ codes. This project was done as a part of the 4<sup>th</sup> Sem Operating System Course at the Dept. of CSE, National Institute of Technology Durgapur. The main objective was to run a C/C++ code whose origin or content is not known.

How to Run
----------
The Defender is very easy to run. The source code of the user program should be placed in the sandbox folder and the shell script test.sh should be run with arguments being the filename of source code and the filename of input file. The shell script will say whether the compilation was unsuccessful, if not it will run the program and save the output file in the same folder. It will terminate with runtime error in-case there is a malicious code snippet.

Features
--------
1. SECCOMP was used to prevent malicious system calls
2. Custom implementation of memory allocating functions in C/C++
3. Provides simple interface to load and excute a program in sandboxed environment via a script
4. Preprocessing the program for commanly known malicious signature

Future Work
-----------
1. Implement other restrictions on execution time and other resource allocation.
2. Add support for Docker

Project Contributors
--------------------
1. Rohan Kumar Gupta
2. Sanchit Chakraborty

**Note** : We would like acknowledge several open source sandbox implementations on git-hub.
