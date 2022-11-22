types:
  config_ai_facing_move_weight:
    seq:
      - id: bit_field
        type: u1
      - id: stop
        type: f4
        if: has_field_stop
      - id: forward
        type: f4
        if: has_field_forward
      - id: back
        type: f4
        if: has_field_back
      - id: left
        type: f4
        if: has_field_left
      - id: right
        type: f4
        if: has_field_right
    instances:
      has_field_stop: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_forward: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_back: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_left: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_right: # Field №4
        value: (bit_field & 0b10000) != 0
