meta:
  id: disp__config_born_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../ConfigBorn/config_born_type
    - ../ConfigBorn/config_born_by_target
    - ../ConfigBorn/config_born_by_self
    - ../ConfigBorn/config_born_by_self_owner
    - ../ConfigBorn/config_born_by_attach_point
    - ../ConfigBorn/config_born_by_storm_lightning
    - ../ConfigBorn/config_born_by_world
    - ../ConfigBorn/config_born_by_global_value
    - ../ConfigBorn/config_born_by_collision_point
    - ../ConfigBorn/config_born_by_rush_to_point
    - ../ConfigBorn/config_born_by_teleport_to_point
    - ../ConfigBorn/config_born_by_predicate_point
    - ../ConfigBorn/config_born_by_hit_point
    - ../ConfigBorn/config_born_by_element_pos
    - ../ConfigBorn/config_born_by_action_point
    - ../ConfigBorn/config_born_by_target_linear_point
    - ../../../aux_types

seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_born_type
        1: config_born_by_target
        2: config_born_by_self
        3: config_born_by_self_owner
        4: config_born_by_attach_point
        5: config_born_by_storm_lightning
        6: config_born_by_world
        7: config_born_by_global_value
        8: config_born_by_collision_point
        9: config_born_by_rush_to_point
        10: config_born_by_teleport_to_point
        11: config_born_by_predicate_point
        12: config_born_by_hit_point
        13: config_born_by_element_pos
        14: config_born_by_action_point
        15: config_born_by_target_linear_point
        _: aux_types::error
