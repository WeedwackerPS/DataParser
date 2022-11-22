types:
  config_world_area_layout:
    seq:
      - id: bit_field
        type: u1
      - id: level1areas
        type: array_of__config_level1world_area__length_u
        if: has_field_level1areas
    instances:
      has_field_level1areas: # Field №0
        value: (bit_field & 0b1) != 0
