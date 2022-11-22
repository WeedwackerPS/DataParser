types:
  color_vector:
    seq:
      - id: bit_field
        type: u1
      - id: r
        type: f4
        if: has_field_r
      - id: g
        type: f4
        if: has_field_g
      - id: b
        type: f4
        if: has_field_b
      - id: a
        type: f4
        if: has_field_a
    instances:
      has_field_r: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_g: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_b: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_a: # Field №3
        value: (bit_field & 0b1000) != 0
