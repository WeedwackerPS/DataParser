types:
  config_ai_investigate_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: look_around_time
        type: f4
        if: has_field_look_around_time
      - id: spacial
        type: u1
        if: has_field_spacial
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_look_around_time: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_spacial: # Field №2
        value: (bit_field & 0b100) != 0
