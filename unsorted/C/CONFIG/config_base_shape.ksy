types:
  config_base_shape:
    seq:
      - id: bit_field
        type: u1
      - id: use_height
        type: u1
        if: has_field_use_height
      - id: height
        type: f4
        if: has_field_height
      - id: height_type
        type: enum__height_pos_type
        if: has_field_height_type
    instances:
      has_field_use_height: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_height: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_height_type: # Field №2
        value: (bit_field & 0b100) != 0
