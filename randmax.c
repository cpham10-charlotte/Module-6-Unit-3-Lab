#include <stdio.h>
#include <stdlib.h>

int randmax() {
  int max = 0;
  int nums[100];
  int COUNT = 100;

  for (int i = 0; i < COUNT; i++) {
    int r = rand();
    nums[i] = r;
  }

  for (int i = 0; i < COUNT; i++) {
    if (max < nums[i]) {
      max = nums[i];
    }
  }

  return max;
}
