types:
  config_ai_pick_action_point_criteria:
    seq:
      - id: bit_field
        type: u1
      - id: point_type
        type: enum__action_point_type
        if: has_field_point_type
      - id: detect_distance
        type: f4
        if: has_field_detect_distance
      - id: speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_speed_level
      - id: pose
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_pose
      - id: nerve_trigger
        type: array_of__enum__neuron_name__length_u
        if: has_field_nerve_trigger
      - id: skill_id
        type: aux_types::vlq_base128_le_s
        if: has_field_skill_id
    instances:
      has_field_point_type: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_detect_distance: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_speed_level: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_pose: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_nerve_trigger: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_skill_id: # Field №5
        value: (bit_field & 0b100000) != 0
