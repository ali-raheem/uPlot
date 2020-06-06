# uPlot

Ancient code I dug up for a simple library for microcontrollers to plot basic line charts. This was written for PIC16F84A some time ago and I've checked with SDCC 3.6 it compiles for the 16f84a and 16f886 but I haven't tested it on either. A quick test shows it's functional to use on a PC.

Your milage may vary

## Building

You need SDCC (I used older binary 3.6.0 latest didn't like the code, and you need non-free add ons (not in many repos). And gpasm which is easy to compile with source.

```
~/Workspace/sdcc-3.6.0/bin/sdcc --use-non-free -mpic14 -p16f886 -c src/uplot.c -o lib/PIC16F886/
```

## Usage

`uPlot(int* framebuffer, int* data, int datalen, int width, int height);`

### Where:

* framebuffer is a pointer for the plot data it'll start from the top-left and be populated like `y*width + x`.
* data is a pointer to an array of unsigned integers
* datalen is the length of data
* width is the width of your plotarea in pixels
* height is the height of your plotarea in pixels

### Return value

`-1` on error, otherwise number of points plotted.