meta:
  id: enum__life_state
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
    enum: life_state
enums:
  life_state:
    0: life_none
    1: life_alive
    2: life_dead
    3: life_revive
