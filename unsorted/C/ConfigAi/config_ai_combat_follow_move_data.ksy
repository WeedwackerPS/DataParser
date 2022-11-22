types:
  config_ai_combat_follow_move_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: start_distance
        type: f4
        if: has_field_start_distance
      - id: stop_distance
        type: f4
        if: has_field_stop_distance
      - id: middle_distance
        type: f4
        if: has_field_middle_distance
      - id: inner_distance
        type: f4
        if: has_field_inner_distance
      - id: speed_level_outer
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level_outer
      - id: speed_level_middle
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level_middle
      - id: speed_level_inner
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level_inner
      - id: start_angle
        type: f4
        if: has_field_start_angle
      - id: outer_angle
        type: f4
        if: has_field_outer_angle
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: turn_speed_override_outer
        type: f4
        if: has_field_turn_speed_override_outer
      - id: use_melee_slot
        type: u1
        if: has_field_use_melee_slot
      - id: move_out_damp_range
        type: f4
        if: has_field_move_out_damp_range
    instances:
      has_field_start_distance: # Field №0
        value: (bit_field.value & 000001) != 0
      has_field_stop_distance: # Field №1
        value: (bit_field.value & 000010) != 0
      has_field_middle_distance: # Field №2
        value: (bit_field.value & 000100) != 0
      has_field_inner_distance: # Field №3
        value: (bit_field.value & 001000) != 0
      has_field_speed_level_outer: # Field №4
        value: (bit_field.value & 010000) != 0
      has_field_speed_level_middle: # Field №5
        value: (bit_field.value & 0b0000000100000) != 0
      has_field_speed_level_inner: # Field №6
        value: (bit_field.value & 0b0000001000000) != 0
      has_field_start_angle: # Field №7
        value: (bit_field.value & 0b0000010000000) != 0
      has_field_outer_angle: # Field №8
        value: (bit_field.value & 0b0000100000000) != 0
      has_field_turn_speed_override: # Field №9
        value: (bit_field.value & 0b0001000000000) != 0
      has_field_turn_speed_override_outer: # Field №10
        value: (bit_field.value & 0b0010000000000) != 0
      has_field_use_melee_slot: # Field №11
        value: (bit_field.value & 0b0100000000000) != 0
      has_field_move_out_damp_range: # Field №12
        value: (bit_field.value & 0b1000000000000) != 0
