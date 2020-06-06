#include "../src/uplot.h"
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
  int data[] = {1, 2, 3, 4, 5, 6, 5, 5, 4, 2};
  int data_len = 10;
  int w = 20;
  int h = 10;
  int *fb = (int *)malloc(sizeof(int) * w * h);
  int rv = uplot(fb, data, data_len, w, h);
  if(rv == -1){
    puts("Unable to plot, need more points?");
    exit(EXIT_FAILURE);
  }
  printf("Plotted %i points.\n", rv);
  int x, y;
  int i = 0;
  char* linebuffer = (char*) malloc(w*sizeof(char) + 1);
  linebuffer[w+1] = '\0';
  for(y = 0; y < h; y++) {
    for(x = 0; x < w; x++) {
      linebuffer[x] = (1 == fb[i++])? 'x' : ' ';
    }
      puts(linebuffer);
  }
}
