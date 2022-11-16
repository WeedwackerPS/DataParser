meta:
  id: enum__combine_unlock_method
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
    enum: combine_unlock_method
enums:
  combine_unlock_method:
    0: combine_unlock_none
    1: combine_unlock_quest
    2: combine_unlock_formula
    3: combine_unlock_sea_lamp_quest
    4: combine_unlock_activity_cond_meet
