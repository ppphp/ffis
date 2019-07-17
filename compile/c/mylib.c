#include <stdio.h>
#include <string.h>
int add(int a, int b) {
  return a + b;
}

char* hello(char* s) {
  printf("%s\n", s);
  return strcat(s, " world");
}
