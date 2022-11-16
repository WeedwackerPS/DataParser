meta:
  id: enum__quest_fish_type
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
    enum: quest_fish_type
enums:
  quest_fish_type:
    0: quest_fish_none
    1: quest_fish_material
    2: quest_fish_furniture
