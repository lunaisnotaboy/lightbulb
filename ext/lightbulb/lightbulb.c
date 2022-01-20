#include "lightbulb.h"

VALUE rb_mLightbulb;

void
Init_lightbulb(void)
{
  rb_mLightbulb = rb_define_module("Lightbulb");
}
