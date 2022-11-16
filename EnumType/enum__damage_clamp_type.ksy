meta:
  id: enum__damage_clamp_type
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
    enum: damage_clamp_type
enums:
  damage_clamp_type:
    0: hp_max_percent
    1: hp_cur_percent
    2: damage_constant
