types:
  config_ai_profiling_setting:
    seq:
      - id: bit_field
        type: u1
      - id: lod_strategy
        type: enum__ai_lod_strategy_type
        if: has_field_lod_strategy
      - id: static_poses
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_static_poses
      - id: move_culling_level
        type: aux_types::vlq_base128_le_s
        if: has_field_move_culling_level
    instances:
      has_field_lod_strategy: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_static_poses: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_move_culling_level: # Field №2
        value: (bit_field & 0b100) != 0
