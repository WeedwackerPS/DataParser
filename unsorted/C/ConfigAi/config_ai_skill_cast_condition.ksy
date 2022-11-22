types:
  config_ai_skill_cast_condition:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: pose
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_pose
      - id: need_re_init_cd
        type: u1
        if: has_field_need_re_init_cd
      - id: min_target_angle_xz
        type: f4
        if: has_field_min_target_angle_xz
      - id: max_target_angle_xz
        type: f4
        if: has_field_max_target_angle_xz
      - id: max_target_angle_y
        type: f4
        if: has_field_max_target_angle_y
      - id: min_target_angle_y
        type: f4
        if: has_field_min_target_angle_y
      - id: pick_range_min
        type: f4
        if: has_field_pick_range_min
      - id: pick_range_max
        type: f4
        if: has_field_pick_range_max
      - id: pick_range_y_max
        type: f4
        if: has_field_pick_range_y_max
      - id: pick_range_y_min
        type: f4
        if: has_field_pick_range_y_min
      - id: skill_anchor_range_min
        type: f4
        if: has_field_skill_anchor_range_min
      - id: skill_anchor_range_max
        type: f4
        if: has_field_skill_anchor_range_max
      - id: cast_range_min
        type: f4
        if: has_field_cast_range_min
      - id: cast_range_max
        type: f4
        if: has_field_cast_range_max
      - id: global_values
        type: array_of__aux_types__string__length_u
        if: has_field_global_values
      - id: global_values_logic_and
        type: u1
        if: has_field_global_values_logic_and
    instances:
      has_field_pose: # Field №0
        value: (bit_field.value & 000000001) != 0
      has_field_need_re_init_cd: # Field №1
        value: (bit_field.value & 000000010) != 0
      has_field_min_target_angle_xz: # Field №2
        value: (bit_field.value & 000000100) != 0
      has_field_max_target_angle_xz: # Field №3
        value: (bit_field.value & 000001000) != 0
      has_field_max_target_angle_y: # Field №4
        value: (bit_field.value & 000010000) != 0
      has_field_min_target_angle_y: # Field №5
        value: (bit_field.value & 000100000) != 0
      has_field_pick_range_min: # Field №6
        value: (bit_field.value & 001000000) != 0
      has_field_pick_range_max: # Field №7
        value: (bit_field.value & 010000000) != 0
      has_field_pick_range_y_max: # Field №8
        value: (bit_field.value & 0b0000000100000000) != 0
      has_field_pick_range_y_min: # Field №9
        value: (bit_field.value & 0b0000001000000000) != 0
      has_field_skill_anchor_range_min: # Field №10
        value: (bit_field.value & 0b0000010000000000) != 0
      has_field_skill_anchor_range_max: # Field №11
        value: (bit_field.value & 0b0000100000000000) != 0
      has_field_cast_range_min: # Field №12
        value: (bit_field.value & 0b0001000000000000) != 0
      has_field_cast_range_max: # Field №13
        value: (bit_field.value & 0b0010000000000000) != 0
      has_field_global_values: # Field №14
        value: (bit_field.value & 0b0100000000000000) != 0
      has_field_global_values_logic_and: # Field №15
        value: (bit_field.value & 0b1000000000000000) != 0
