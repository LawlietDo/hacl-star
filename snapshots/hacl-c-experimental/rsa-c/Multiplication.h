/* This file was auto-generated by KreMLin! */
#include "kremlib.h"
#ifndef __Multiplication_H
#define __Multiplication_H


#include "Addition.h"
#include "Comparison.h"
#include "Convert.h"
#include "Shift.h"
#include "Division.h"
#include "testlib.h"

typedef uint64_t *Multiplication_bignum;

typedef struct 
{
  uint64_t fst;
  uint64_t snd;
}
K___uint64_t_uint64_t;

K___uint64_t_uint64_t Multiplication_mult64(uint64_t x, uint64_t y);

K___uint64_t_uint64_t Multiplication_add64(uint64_t x, uint64_t y);

void
Multiplication_mult_inner_loop(
  uint32_t aLen,
  uint64_t *a,
  uint64_t *b,
  uint32_t i,
  uint32_t j,
  uint64_t carry,
  uint64_t *res
);

void
Multiplication_mult_outer_loop(
  uint32_t aLen,
  uint32_t bLen,
  uint64_t *a,
  uint64_t *b,
  uint32_t i,
  uint64_t *res
);

void
Multiplication_mult(uint32_t aLen, uint32_t bLen, uint64_t *a, uint64_t *b, uint64_t *res);

void Multiplication_sqr(uint32_t aLen, uint64_t *a, uint64_t *res);
#endif