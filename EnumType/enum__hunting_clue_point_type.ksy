meta:
  id: enum__hunting_clue_point_type
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
    enum: hunting_clue_point_type
enums:
  hunting_clue_point_type:
    0: hunting_clue_iteract
    1: hunting_clue_monster
    2: hunting_clue_gather
    3: hunting_clue_final
