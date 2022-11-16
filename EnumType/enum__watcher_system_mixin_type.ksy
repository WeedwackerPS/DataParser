meta:
  id: enum__watcher_system_mixin_type
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
    enum: watcher_system_mixin_type
enums:
  watcher_system_mixin_type:
    0: element_reaction
    1: element_reaction_by_water
    2: element_reaction_by_grass
    3: element_reaction_by_bush
    4: attack_landed
    5: do_skill_succ_nomal_attack
    6: do_skill_succ_elemental_art
    7: do_skill_succ_elemental_burst
    8: element_shield_add
    9: global_sub_shield_add
    10: listen_ability_action
    11: local_avatar_hp_change
    12: get_first_wind_bullet
    13: get_second_wind_bullet
    14: spawn_wind_field_by_wind_bullet
    15: avatar_state_id_change
    16: avatar_weapon_element_override
