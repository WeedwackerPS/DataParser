types:
  ai_point:
    seq:
      - id: bit_field
        type: u1
      - id: x
        type: f4
        if: has_field_x
      - id: y
        type: f4
        if: has_field_y
    instances:
      has_field_x: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_y: # Field №1
        value: (bit_field & 0b10) != 0
