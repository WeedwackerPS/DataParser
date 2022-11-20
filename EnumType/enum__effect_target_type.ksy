meta:
  id: enum__effect_target_type
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
    enum: effect_target_type
enums:
  effect_target_type:
    0: effect_target_none
    1: effect_target_solo
    2: effect_target_team
