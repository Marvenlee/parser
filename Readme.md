# Calculator app using Flex and Bison

A calculator command line tool based on the code snippets from a 2006 article
by Martin Brown on IBM's DeveloperWorks website:

https://www.ibm.com/developerworks/aix/tutorials/au-lexyacc/index.html

Minor changes were made, most notably the assignment operator and storage
registers were removed.  I've built it and added it here as a quick
experiment in using Flex and Bison to build a simple parser.  In the
future I may look to add code to create an abstract syntax tree to make
a small language capable of conditional expressions and loops.


## Usage

Ensure that Flex and Bison are installed on your system.

To build and run the app enter:
make all
./parser

Enter equations such as:
1+2
3 * (4 + 5)
ans + 6   
sin(1)

Enter "exit" to quit the app.

To clean the build enter:
make clean


