meta:
  id: enum__endure_type
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
    enum: endure_type
enums:
  endure_type:
    0: none
    1: default
    2: avatar_sword
    3: avatar_pole
    4: avatar_claymore
    5: avatar_bow
    6: avatar_catalyst
    7: monster_minion
    8: monster_grunt_humanoid
    9: monster_grunt_other
    10: monster_demiboss_humanoid
    11: monster_demiboss_other
    12: monster_boss_humanoid
    13: monster_boss_other
    14: monster_slime
    15: monster_tartaglia
