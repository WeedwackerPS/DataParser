meta:
  id: enum__entity_type
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
    enum: entity_type
enums:
  entity_type:
    0: none
    1: avatar
    2: monster
    3: bullet
    4: attack_phyisical_unit
    5: aoe
    6: camera
    7: enviro_area
    8: equip
    9: monster_equip
    10: grass
    11: level
    12: npc
    13: trans_point_first
    14: trans_point_first_gadget
    15: trans_point_second
    16: trans_point_second_gadget
    17: drop_item
    18: field
    19: gadget
    20: water
    21: gather_point
    22: gather_object
    23: airflow_field
    24: speedup_field
    25: gear
    26: chest
    27: energy_ball
    28: elem_crystal
    29: timeline
    30: worktop
    31: team
    32: platform
    33: amber_wind
    34: env_animal
    35: seal_gadget
    36: tree
    37: bush
    38: quest_gadget
    39: lightning
    40: reward_point
    41: reward_statue
    42: mp_level
    43: wind_seed
    44: mp_play_reward_point
    45: view_point
    46: remote_avatar
    47: general_reward_point
    48: play_team
    49: offering_gadget
    50: eye_point
    51: miracle_ring
    52: foundation
    53: widget_gadget
    54: vehicle
    55: danger_zone
    56: echo_shell
    57: home_gather_object
    58: projector
    59: screen
    60: custom_tile
    61: fish_pool
    62: fish_rod
    63: custom_gadget
    64: roguelike_operator_gadget
    99: place_holder
