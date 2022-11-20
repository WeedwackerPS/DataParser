meta:
  id: enum__scene_building_type
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
    enum: scene_building_type
enums:
  scene_building_type:
    0: none
    1: church
    2: knights
    3: pub
    4: souvenir
    5: restaurant
    6: general_cargo
    7: blacksmith
    8: team_arranger
    9: adventurers
    10: alchemy
    11: sea_lamp_giving
    12: blacksmith_liyue
    13: souvenir_liyue
    14: restaurant_liyue
    15: reputation
    16: reputation_liyue
    17: aster_middle_npc
    18: elder_tree
    19: miscs_marvs
    20: treasure_map_npc
    21: drake_primo_rock_npc
    22: activity_blessing_npc
    23: mechanicus_npc
    24: activity_arena_challenge
    25: fleur_fair_npc
    26: hide_and_seek_npc
    27: channeller_slab_npc
    28: bounce_conjuring_npc
    29: reputation_inazuma
    30: perpetual_npc
    31: oraionokami_tree
    32: restaurant_inazuma
    33: blacksmith_inazuma
    34: souvenir_inazuma
    35: bugyowu
    36: chashitsu
    37: luna_rite_npc
    38: fish
    39: fish_liyue
    40: fish_inazuma
    41: music_game_npc
    42: grow_flowers_npc
