types:
  config_music_game_key:
    seq:
      - id: bit_field
        type: u1
      - id: button
        type: enum__music_key_type
        if: has_field_button
      - id: time
        type: aux_types::vlq_base128_le_u
        if: has_field_time
      - id: note
        type: aux_types::vlq_base128_le_s
        if: has_field_note
      - id: is_long_press
        type: u1
        if: has_field_is_long_press
      - id: long_press_time
        type: aux_types::vlq_base128_le_u
        if: has_field_long_press_time
    instances:
      has_field_button: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_time: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_note: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_is_long_press: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_long_press_time: # Field №4
        value: (bit_field & 0b10000) != 0
