types:
  config_ai_find_back_data:
    seq:
      - id: bit_field
        type: u1
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: cd
        type: f4
        if: has_field_cd
      - id: overtime
        type: f4
        if: has_field_overtime
      - id: target_lr_space
        type: f4
        if: has_field_target_lr_space
      - id: target_back_space
        type: f4
        if: has_field_target_back_space
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_cd: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_overtime: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_target_lr_space: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_target_back_space: # Field №5
        value: (bit_field & 0b100000) != 0
