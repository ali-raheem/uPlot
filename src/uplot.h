#ifndef __UPLOT_H
#define __UPLOT_H

void zerobuffer(unsigned int* buffer, const unsigned int len);

int uplot(unsigned int* framebuffer, const unsigned int* data, const unsigned int datalen, const unsigned int width, const unsigned int height);

#endif
