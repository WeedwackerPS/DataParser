types:
  config_monster_initial_pose:
    seq:
      - id: bit_field
        type: u1
      - id: initial_pose_id
        type: aux_types::vlq_base128_le_s
        if: has_field_initial_pose_id
      - id: released
        type: u1
        if: has_field_released
      - id: initial_pose_params
        type: config_pose_initial_param
        if: has_field_initial_pose_params
    instances:
      has_field_initial_pose_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_released: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_initial_pose_params: # Field №2
        value: (bit_field & 0b100) != 0
