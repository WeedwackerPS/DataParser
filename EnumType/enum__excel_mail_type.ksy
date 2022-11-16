meta:
  id: enum__excel_mail_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: excel_mail_type
enums:
  excel_mail_type:
    0: excel_mail_none
    1: excel_mail_tower_daily
    2: excel_mail_tower_monthly
    3: excel_mail_tower_overflow_first_pass
