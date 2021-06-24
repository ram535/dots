#include "../include/__PROJECT-NAME__.h"

int __PROJECT-NAME__(const char *txt) {
  int words = 0;

  if (*txt == '\0')
    return words;

  for (int i = 0; txt[i]; ++i) {
    if (txt[i] == ' ') {
      ++words;
    }
  }
  return words + 1;
}
