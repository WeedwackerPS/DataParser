types:
  config_level_block:
    seq:
      - id: bit_field
        type: u1
      - id: min
        type: vector
        if: has_field_min
      - id: max
        type: vector
        if: has_field_max
      - id: level_areas
        type: array_of__config_level_area__length_u
        if: has_field_level_areas
    instances:
      has_field_min: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_max: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_level_areas: # Field №2
        value: (bit_field & 0b100) != 0
