#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <wait.h>

#include "zemaphore.h"

void zem_init(zem_t *s, int value) {
  pthread_mutex_init(&s->lock, NULL);
  pthread_cond_init(&s->cond, NULL);
  s->count = value;
}

void zem_down(zem_t *s) {}

void zem_up(zem_t *s) {}
