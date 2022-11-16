meta:
  id: enum__blossom_refresh_type
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
    enum: blossom_refresh_type
enums:
  blossom_refresh_type:
    0: blossom_refresh_none
    1: blossom_refresh_scoin
    2: blossom_refresh_weapon
    3: blossom_refresh_exp
    4: blossom_refresh_crystal
    5: blossom_refresh_infused_crystal
    6: blossom_refresh_dragon_spine_a
    7: blossom_refresh_dragon_spine_b
    8: blossom_island_sentry_tower_a
    9: blossom_island_sentry_tower_b
    10: blossom_island_bomb
    11: blossom_refresh_blitz_rush_a
    12: blossom_refresh_blitz_rush_b
