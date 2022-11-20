meta:
  id: enum__taunt_level
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
    enum: taunt_level
enums:
  taunt_level:
    0: ability_taunt_level_1
    1: ability_taunt_level_2
    2: ability_taunt_level_3
    3: ability_taunt_level_4
    4: ability_taunt_level_5
    10: ability_taunt_level_max
    11: monster_taunt_level_1
    12: monster_taunt_level_2
    13: monster_taunt_level_3
    14: monster_taunt_level_4
    15: monster_taunt_level_5
    16: monster_taunt_level_6
    20: monster_taunt_level_max
