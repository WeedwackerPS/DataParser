types:
  config_level1world_area:
    seq:
      - id: bit_field
        type: u1
      - id: level1area
        type: config_world_area
        if: has_field_level1area
      - id: level2areas
        type: array_of__config_world_area__length_u
        if: has_field_level2areas
    instances:
      has_field_level1area: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_level2areas: # Field №1
        value: (bit_field & 0b10) != 0
