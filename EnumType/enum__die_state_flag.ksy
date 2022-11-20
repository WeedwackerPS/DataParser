meta:
  id: enum__die_state_flag
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
    enum: die_state_flag
enums:
  die_state_flag:
    0: none
    1: frozen_to_death
    2: burning_to_ashes
    3: die_fall
    4: die_drawn
    5: die_abyss
    6: broken
    7: petrified_to_death
