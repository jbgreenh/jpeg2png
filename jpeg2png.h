#ifndef JPEG2PNG_JPEG2PNG_H
#define JPEG2PNG_JPEG2PNG_H

#include <stdint.h>

struct coef {
        unsigned h;
        unsigned w;
        int16_t *data;
        float *fdata;
};

#endif
