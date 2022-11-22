types:
  config_ai_mixin_set_controller_condition:
    seq:
      - id: bit_field
        type: u1
      - id: pose_i_ds
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_pose_i_ds
      - id: settings
        type: array_of__config_ai_mixin_set_controller_parameter__length_u
        if: has_field_settings
    instances:
      has_field_pose_i_ds: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_settings: # Field №1
        value: (bit_field & 0b10) != 0
