meta:
  id: enum__general_routine_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: general_routine_type
enums:
  general_routine_type:
    0: routine_type_none
    1: routine_snow_mountain
