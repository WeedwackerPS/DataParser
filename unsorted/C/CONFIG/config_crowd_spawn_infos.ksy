types:
  config_crowd_spawn_infos:
    seq:
      - id: bit_field
        type: u1
      - id: crowd_spawn_infos
        type: array_of__config_crowd_spawn_info__length_u
        if: has_field_crowd_spawn_infos
      - id: crowd_group_collider_infos
        type: array_of__config_crowd_group_collider_info__length_u
        if: has_field_crowd_group_collider_infos
    instances:
      has_field_crowd_spawn_infos: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_crowd_group_collider_infos: # Field №1
        value: (bit_field & 0b10) != 0
