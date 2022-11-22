types:
  config_ai_melee_charge_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: start_distance_min
        type: f4
        if: has_field_start_distance_min
      - id: start_distance_max
        type: f4
        if: has_field_start_distance_max
      - id: stop_distance
        type: f4
        if: has_field_stop_distance
      - id: inner_distance
        type: f4
        if: has_field_inner_distance
      - id: speed_level_inner
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level_inner
      - id: use_melee_slot
        type: u1
        if: has_field_use_melee_slot
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_start_distance_min: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_start_distance_max: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_stop_distance: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_inner_distance: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_speed_level_inner: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_use_melee_slot: # Field №7
        value: (bit_field & 0b10000000) != 0
