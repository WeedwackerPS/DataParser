types:
  config_navigation:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__nav_type
        if: has_field_type
      - id: size_x
        type: f4
        if: has_field_size_x
      - id: size_y
        type: f4
        if: has_field_size_y
      - id: size_z
        type: f4
        if: has_field_size_z
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_size_x: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_size_y: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_size_z: # Field №3
        value: (bit_field & 0b1000) != 0
