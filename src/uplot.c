#include "uplot.h"

extern int uplot(unsigned int* fb, const unsigned int* d, const unsigned int len, const unsigned int width, const unsigned int height) {
  unsigned int min, max, i, x, y;
  zerobuffer(fb, width * height);
  if(2 > len || 2 > width || 2 > height) {
    return -1;
  }

  min = max = fb[0];
  for(i = 1; i < len; i++) {
    if (d[i] < min) min = d[i];
    if (d[i] > max) max = d[i];
  }
  if(0 == max) {
    return -1;
  }
  for(i = 0; i < len; i++) {
    x = i;
    y = d[i] * (height - 1) / max;
    fb[(height - 1 - y) * width + x] = 1;
  }
  return i;
}

void zerobuffer(unsigned int* buffer, const unsigned int len) {
  unsigned int i;
  for(i = 0; i < len; i++){
    buffer[i] = 0;
  }
}
