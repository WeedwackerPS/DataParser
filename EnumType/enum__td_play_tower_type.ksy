meta:
  id: enum__td_play_tower_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: td_play_tower_type
enums:
  td_play_tower_type:
    0: default
    1: fire
    2: water
    3: ice
    4: wind
    5: electric
    6: simple
    7: supporter
    8: builder
    9: mine
    10: gate
