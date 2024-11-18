#include <stdio.h>
#include <stdlib.h>

int randavg() {
  int ttl = 0;
  int nums[100];
  int COUNT = 100;
  int avg;

  for (int i = 0; i < COUNT; i++) {
    int r = rand();
    nums[i] = r;
  }

  for (int i = 0; i < COUNT; i++) {
    ttl += nums[i];
  }
  
  avg = ttl / COUNT;
  printf("The average of the 100 random integers is %d\n", avg);
  return avg;
}
