; pass - dmg, ags

.include "header.inc"

; LCD on -> STAT mode reads 0

;-------------------------------------------------------------------------------
  
main:

  lcd_off_unsafe

  lcd_on

  nops 16 + 44 + 114

  test_finish_stat $80

;-------------------------------------------------------------------------------
