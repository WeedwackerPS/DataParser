meta:
  id: enum__monster_rarity_type
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
    enum: monster_rarity_type
enums:
  monster_rarity_type:
    0: monster_rarity_none
    1: monster_rarity_small_monster
    2: monster_rarity_elite_monster
    3: monster_rarity_boss_monster
    4: monster_rarity_big_boss_monster
    5: monster_rarity_small_env_animal
