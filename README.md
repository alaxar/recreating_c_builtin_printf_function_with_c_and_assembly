# Recreating C Builtin printf function with C and Assembly Language
I have tried to recreate a function called printf which can be found in libc library, it is standard builtin output function, I wrote this code just to show how libc souce is written, when I started programming with C I was so curious about how those builtin I/O functions work, I tired many things to see their source file but it wasn't successful, to your surprise you can't find their source on your directory they are placed as object file almost translated into machine code, these functions works by linking your source with the appropriate .o file, but now I wrote you this just to show you how libc functions are written eg. printf, scanf, puts, gets...

# how to run

I wrote you a sample.c file just to show how you can include in your own source code, you can test with sample.c file or you can create your own source file

# Example (Source Code)
#include "print_s.h"

code {
int main() {
    // load your string into a variable either in a pointer or array, it doesn't matter
    char *your_text = "Alazar";
   
    // get the size of your string by using string_len which is defined in the header
    int n = string_len(your_text);
   
    // then call the function print_s(char *str, int n) by passing the arguments (your_text, n)
    print_s(your_text, n);
    return 0;
}
}
# Example (Compilation) with Make

  Step 1: goto Makefile and edit starting from line 3 - 5 and change it to your source file name but do not change the extension
  Step 2: type in your terminal "make <your_source_file_name>" make sure that you place the header, object file in the same folder
  Step 3: run your program by typing ./<your_source_file_name>
  
# Enjoy
