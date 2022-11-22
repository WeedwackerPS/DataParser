types:
  config_ai_fly_setting:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: floating_poses
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_floating_poses
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_floating_poses: # Field №1
        value: (bit_field & 0b10) != 0
