meta:
  id: enum__has_shield_type
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
    enum: has_shield_type
enums:
  has_shield_type:
    0: elite_shield
    1: element_shield
    2: global_shield
    3: all
