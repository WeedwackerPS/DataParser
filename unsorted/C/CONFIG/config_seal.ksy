types:
  config_seal:
    seq:
      - id: bit_field
        type: u1
      - id: progress_type
        type: enum__seal_progress_type
        if: has_field_progress_type
      - id: board_effect
        type: aux_types::string
        if: has_field_board_effect
      - id: board_effect_start_position
        type: f4
        if: has_field_board_effect_start_position
      - id: board_effect_end_position
        type: f4
        if: has_field_board_effect_end_position
      - id: start_tips
        type: aux_types::string
        if: has_field_start_tips
      - id: title
        type: aux_types::string
        if: has_field_title
    instances:
      has_field_progress_type: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_board_effect: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_board_effect_start_position: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_board_effect_end_position: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_start_tips: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_title: # Field №5
        value: (bit_field & 0b100000) != 0
