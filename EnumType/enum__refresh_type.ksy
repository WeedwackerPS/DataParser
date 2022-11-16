meta:
  id: enum__refresh_type
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
    enum: refresh_type
enums:
  refresh_type:
    0: refresh_none
    1: refresh_interval
    2: refresh_daily
    3: refresh_wee_kl_y
    4: refresh_daybegin_interval
