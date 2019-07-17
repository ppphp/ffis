#include <iostream>
#include <string>

extern "C"
int add(int a, int b) {
  return a + b;
}

extern "C"
char* hello(char* s) {
  std::string str(s);
  std::cout<<str<<std::endl;
  return (char*)(str + " world").c_str();
}
