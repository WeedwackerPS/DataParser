types:
  config_gadget_pattern:
    seq:
      - id: bit_field
        type: u1
      - id: collision
        type: config_collision
        if: has_field_collision
    instances:
      has_field_collision: # Field №0
        value: (bit_field & 0b1) != 0
