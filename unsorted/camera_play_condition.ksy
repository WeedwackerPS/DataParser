types:
  camera_play_condition:
    seq:
      - id: bit_field
        type: u1
      - id: degree_x
        type: f4
        if: has_field_degree_x
      - id: degree_y
        type: f4
        if: has_field_degree_y
      - id: length
        type: f4
        if: has_field_length
    instances:
      has_field_degree_x: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_degree_y: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_length: # Field №2
        value: (bit_field & 0b100) != 0
