meta:
  id: disp__config_born_direction_type
  endian: le
  license: GPLv2
  imports:
    - ../ConfigBornDirection/config_born_direction_type
    - ../ConfigBornDirection/config_direction_by_default
    - ../ConfigBornDirection/config_direction_by_entity
    - ../ConfigBornDirection/config_direction_by_attack_target
    - ../ConfigBornDirection/config_direction_by_attach_point
    - ../ConfigBornDirection/config_direction_by_back_to_hit_box_center
    - ../ConfigBornDirection/config_direction_by_look_at_entity
    - ../ConfigBornDirection/config_direction_by_ground_normal
    - ../ConfigBornDirection/config_direction_by_global_value
    - ../ConfigBornDirection/config_direction_by_world
    - ../ConfigBornDirection/config_direction_by_ground_normal_range
    - ../../../aux_types

seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_born_direction_type
        1: config_direction_by_default
        2: config_direction_by_entity
        3: config_direction_by_attack_target
        4: config_direction_by_attach_point
        5: config_direction_by_back_to_hit_box_center
        6: config_direction_by_look_at_entity
        7: config_direction_by_ground_normal
        8: config_direction_by_global_value
        9: config_direction_by_world
        10: config_direction_by_ground_normal_range
        _: aux_types::error
