types:
  config_crowd_group_infos:
    seq:
      - id: bit_field
        type: u1
      - id: crowd_group_infos
        type: array_of__config_crowd_group_info__length_u
        if: has_field_crowd_group_infos
    instances:
      has_field_crowd_group_infos: # Field №0
        value: (bit_field & 0b1) != 0
