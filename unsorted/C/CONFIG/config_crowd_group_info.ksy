types:
  config_crowd_group_info:
    seq:
      - id: bit_field
        type: u1
      - id: crowd_group_id
        type: aux_types::vlq_base128_le_s
        if: has_field_crowd_group_id
      - id: bound_center
        type: vector
        if: has_field_bound_center
      - id: bound_size
        type: vector
        if: has_field_bound_size
      - id: spawn_by_default
        type: u1
        if: has_field_spawn_by_default
      - id: crowd_restriction_groups
        type: array_of__config_crowd_restriction_group__length_u
        if: has_field_crowd_restriction_groups
      - id: cutscene_id
        type: aux_types::vlq_base128_le_s
        if: has_field_cutscene_id
      - id: ignore_low_perf_mode
        type: u1
        if: has_field_ignore_low_perf_mode
      - id: joint_blocks
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_joint_blocks
    instances:
      has_field_crowd_group_id: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_bound_center: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_bound_size: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_spawn_by_default: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_crowd_restriction_groups: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_cutscene_id: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_ignore_low_perf_mode: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_joint_blocks: # Field №7
        value: (bit_field & 0b10000000) != 0
