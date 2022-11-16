meta:
  id: enum__ai_lod_strategy_type
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
    enum: ai_lod_strategy_type
enums:
  ai_lod_strategy_type:
    0: best
    1: npc
    2: monster
    3: minor_animal
    4: monster_vista
    5: count
