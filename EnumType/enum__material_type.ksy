meta:
  id: enum__material_type
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
    enum: material_type
enums:
  material_type:
    0: material_none
    1: material_food
    2: material_quest
    4: material_exchange
    5: material_consume
    6: material_exp_fruit
    7: material_avatar
    8: material_adsorbate
    9: material_cricket
    10: material_elem_crystal
    11: material_weapon_exp_stone
    12: material_chest
    13: material_reliquary_material
    14: material_avatar_material
    15: material_notice_add_hp
    16: material_sea_lamp
    17: material_selectable_chest
    18: material_flycloak
    19: material_namecard
    20: material_talent
    21: material_widget
    22: material_chest_batch_use
    23: material_fake_absorbate
    24: material_consume_batch_use
    25: material_wood
    27: material_furniture_formula
    28: material_channeller_slab_buff
    29: material_furniture_suite_formula
    30: material_costume
    31: material_home_seed
    32: material_fish_bait
    33: material_fish_rod
    34: material_sumo_buff
