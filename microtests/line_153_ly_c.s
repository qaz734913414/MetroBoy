; pass - ags

.include "header.inc"

.ifdef DMG
.define RESULT 0
.else
.define RESULT 153
.endif

main:
  di
  clear_stat
  clear_if
  lcd_off_unsafe
  lcd_on

  ; This delay loop will run out at the end of line 152
  xor a
  ld bc, 3160
- dec bc
  cp b
  jr nz, -

  nops 6

  ldh a, (LY)
  test_finish_a RESULT