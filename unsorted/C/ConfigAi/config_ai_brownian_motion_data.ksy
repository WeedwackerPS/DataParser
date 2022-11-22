types:
  config_ai_brownian_motion_data:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: turn_speed_override
        type: f4
        if: has_field_turn_speed_override
      - id: move_cd_min
        type: f4
        if: has_field_move_cd_min
      - id: move_cd_max
        type: f4
        if: has_field_move_cd_max
      - id: terrain_offset_min
        type: f4
        if: has_field_terrain_offset_min
      - id: terrain_offset_max
        type: f4
        if: has_field_terrain_offset_max
      - id: motion_radius
        type: f4
        if: has_field_motion_radius
      - id: recalc_center_on_leave_current_zone
        type: u1
        if: has_field_recalc_center_on_leave_current_zone
      - id: recalc_center_on_attach_pos_change
        type: u1
        if: has_field_recalc_center_on_attach_pos_change
    instances:
      has_field_speed_level: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_turn_speed_override: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_move_cd_min: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_move_cd_max: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_terrain_offset_min: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_terrain_offset_max: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_motion_radius: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_recalc_center_on_leave_current_zone: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_recalc_center_on_attach_pos_change: # Field №8
        value: (bit_field.value & 0b100000000) != 0
