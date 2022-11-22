types:
  config_ai_flee_on_block_avatar_landing_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: trigger_distance
        type: f4
        if: has_field_trigger_distance
      - id: flee_angle
        type: f4
        if: has_field_flee_angle
      - id: flee_distance_min
        type: f4
        if: has_field_flee_distance_min
      - id: flee_distance_max
        type: f4
        if: has_field_flee_distance_max
      - id: neuron_trigger_cd
        type: f4
        if: has_field_neuron_trigger_cd
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_trigger_distance: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_flee_angle: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_flee_distance_min: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_flee_distance_max: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_neuron_trigger_cd: # Field №6
        value: (bit_field & 0b1000000) != 0
