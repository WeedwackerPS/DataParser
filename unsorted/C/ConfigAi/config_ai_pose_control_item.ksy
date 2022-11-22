types:
  config_ai_pose_control_item:
    seq:
      - id: bit_field
        type: u1
      - id: min_time
        type: f4
        if: has_field_min_time
      - id: max_time
        type: f4
        if: has_field_max_time
      - id: pose_id
        type: aux_types::vlq_base128_le_s
        if: has_field_pose_id
      - id: random_pose
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_random_pose
      - id: switch_only_in_can_do_skill_state
        type: u1
        if: has_field_switch_only_in_can_do_skill_state
    instances:
      has_field_min_time: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_max_time: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_pose_id: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_random_pose: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_switch_only_in_can_do_skill_state: # Field №4
        value: (bit_field & 0b10000) != 0
