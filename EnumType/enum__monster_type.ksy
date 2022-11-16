meta:
  id: enum__monster_type
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
    enum: monster_type
enums:
  monster_type:
    0: monster_none
    1: monster_ordinary
    2: monster_boss
    3: monster_env_animal
    4: monster_little_monster
    5: monster_fish
