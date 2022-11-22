types:
  config_home_common_pos:
    seq:
      - id: bit_field
        type: u1
      - id: position
        type: vector
        if: has_field_position
      - id: rotation
        type: vector
        if: has_field_rotation
    instances:
      has_field_position: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_rotation: # Field №1
        value: (bit_field & 0b10) != 0
