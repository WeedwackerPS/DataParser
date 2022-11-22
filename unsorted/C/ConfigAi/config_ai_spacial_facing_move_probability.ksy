types:
  config_ai_spacial_facing_move_probability:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: stop
        type: f4
        if: has_field_stop
      - id: forward
        type: f4
        if: has_field_forward
      - id: right
        type: f4
        if: has_field_right
      - id: up
        type: f4
        if: has_field_up
      - id: forward_min
        type: f4
        if: has_field_forward_min
      - id: forward_max
        type: f4
        if: has_field_forward_max
      - id: back_min
        type: f4
        if: has_field_back_min
      - id: back_max
        type: f4
        if: has_field_back_max
      - id: right_min
        type: f4
        if: has_field_right_min
      - id: right_max
        type: f4
        if: has_field_right_max
      - id: left_min
        type: f4
        if: has_field_left_min
      - id: left_max
        type: f4
        if: has_field_left_max
      - id: up_min
        type: f4
        if: has_field_up_min
      - id: up_max
        type: f4
        if: has_field_up_max
      - id: down_min
        type: f4
        if: has_field_down_min
      - id: down_max
        type: f4
        if: has_field_down_max
      - id: best_height
        type: f4
        if: has_field_best_height
      - id: min_height
        type: f4
        if: has_field_min_height
      - id: max_height
        type: f4
        if: has_field_max_height
    instances:
      has_field_stop: # Field №0
        value: (bit_field.value & 000000000001) != 0
      has_field_forward: # Field №1
        value: (bit_field.value & 000000000010) != 0
      has_field_right: # Field №2
        value: (bit_field.value & 000000000100) != 0
      has_field_up: # Field №3
        value: (bit_field.value & 000000001000) != 0
      has_field_forward_min: # Field №4
        value: (bit_field.value & 000000010000) != 0
      has_field_forward_max: # Field №5
        value: (bit_field.value & 000000100000) != 0
      has_field_back_min: # Field №6
        value: (bit_field.value & 000001000000) != 0
      has_field_back_max: # Field №7
        value: (bit_field.value & 000010000000) != 0
      has_field_right_min: # Field №8
        value: (bit_field.value & 000100000000) != 0
      has_field_right_max: # Field №9
        value: (bit_field.value & 001000000000) != 0
      has_field_left_min: # Field №10
        value: (bit_field.value & 010000000000) != 0
      has_field_left_max: # Field №11
        value: (bit_field.value & 0b0000000100000000000) != 0
      has_field_up_min: # Field №12
        value: (bit_field.value & 0b0000001000000000000) != 0
      has_field_up_max: # Field №13
        value: (bit_field.value & 0b0000010000000000000) != 0
      has_field_down_min: # Field №14
        value: (bit_field.value & 0b0000100000000000000) != 0
      has_field_down_max: # Field №15
        value: (bit_field.value & 0b0001000000000000000) != 0
      has_field_best_height: # Field №16
        value: (bit_field.value & 0b0010000000000000000) != 0
      has_field_min_height: # Field №17
        value: (bit_field.value & 0b0100000000000000000) != 0
      has_field_max_height: # Field №18
        value: (bit_field.value & 0b1000000000000000000) != 0
