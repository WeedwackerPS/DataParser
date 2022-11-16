meta:
  id: enum__gather_save_type
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
    enum: gather_save_type
enums:
  gather_save_type:
    0: gather_save_type_none
    1: gather_save_type_low
    2: gather_save_type_mid
    3: gather_save_type_high
    4: gather_save_type_own
