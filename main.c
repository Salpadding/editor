#include "./defs.h"
#include <stdio.h>

int main() {
  kbd();
  command();
  display();
  insert();
  search();
  files();
  utils();
  subs();
  printf("version = %s\n", EDITOR_VERSION);
  return 0;
}
