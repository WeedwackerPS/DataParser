types:
  config_ai_follow_scripted_path_data:
    seq:
      - id: bit_field
        type: u1
      - id: turn_speed_override_walk
        type: f4
        if: has_field_turn_speed_override_walk
      - id: turn_speed_override_run
        type: f4
        if: has_field_turn_speed_override_run
      - id: spacial
        type: u1
        if: has_field_spacial
      - id: spacial_roll
        type: u1
        if: has_field_spacial_roll
    instances:
      has_field_turn_speed_override_walk: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_turn_speed_override_run: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_spacial: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_spacial_roll: # Field №3
        value: (bit_field & 0b1000) != 0
