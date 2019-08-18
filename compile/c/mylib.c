#include <stdio.h>
#include <string.h>
int add(int a, int b) {
  return a + b;
}

char* hello(char* s) {
  printf("%s\n", s);
  return strcat(s, " world");
}

int fib(int n) {
  int t1 = 0, t2 = 1, t3 = 1;
  for (int i = 0; i <= n; ++i) {
    t3 = t1 + t3;
    t1 = t2;
    t2 = t3;
  }
  return t1;
}
