types:
  config_homeworld_djinn_info_default_save:
    seq:
      - id: bit_field
        type: u1
      - id: pos
        type: vector
        if: has_field_pos
      - id: rot
        type: vector
        if: has_field_rot
    instances:
      has_field_pos: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_rot: # Field №1
        value: (bit_field & 0b10) != 0
