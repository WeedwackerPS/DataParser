types:
  config_ai_return_to_born_pos_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: fadeout_begin_time
        type: f4
        if: has_field_fadeout_begin_time
      - id: fadeout_end_time
        type: f4
        if: has_field_fadeout_end_time
      - id: spacial
        type: u1
        if: has_field_spacial
      - id: perform_time
        type: f4
        if: has_field_perform_time
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_fadeout_begin_time: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_fadeout_end_time: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_spacial: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_perform_time: # Field №4
        value: (bit_field & 0b10000) != 0
