meta:
  id: enum__talent_point_type
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
    enum: talent_point_type
enums:
  talent_point_type:
    0: talent_point_none
    1: talent_point_small
    2: talent_point_big
