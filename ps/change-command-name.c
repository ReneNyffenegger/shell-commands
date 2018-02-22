//
//  gcc change-command-name.c -o change-command-name
//
#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char** argv) {

  printf("go to another terminal and enter\n");
  printf("  ps --pid %d -o comm=Process-Name,cmd\n", getpid());

  printf("press any key\n");
  getc(stdin);

  strncpy(*argv, "Changed process title", strlen(*argv));
  *argv[strlen(*argv)] = '\0';
  printf("I have changed to process title, execute the command again.\n");

  printf("press any key\n");
  getc(stdin);

}
