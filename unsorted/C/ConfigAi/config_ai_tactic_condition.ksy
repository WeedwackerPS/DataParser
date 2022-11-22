types:
  config_ai_tactic_condition:
    seq:
      - id: bit_field
        type: u1
      - id: pose
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_pose
    instances:
      has_field_pose: # Field №0
        value: (bit_field & 0b1) != 0
