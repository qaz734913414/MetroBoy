; pass - ags, dmg

.ifdef DMG
.define DELAY 20
.else
.define DELAY 20
.endif

.include "header.inc"

main:
  di
  clear_if
  clear_stat
  lcd_off_unsafe
  lcd_on
  nops 114

  set_stat_int_oam
  set_ie_stat
  ei

  ldh (DIV), a
  halt
  nop


  test_fail

.org STAT_INT_VECTOR
  nops DELAY
  test_finish_div 1
