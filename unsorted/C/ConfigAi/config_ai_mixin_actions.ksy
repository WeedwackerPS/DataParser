types:
  config_ai_mixin_actions:
    seq:
      - id: bit_field
        type: u1
      - id: set_pose_bool
        type: array_of__config_ai_mixin_set_bool__length_u
        if: has_field_set_pose_bool
      - id: set_pose_int
        type: array_of__config_ai_mixin_set_int__length_u
        if: has_field_set_pose_int
      - id: set_pose_float
        type: array_of__config_ai_mixin_set_float__length_u
        if: has_field_set_pose_float
      - id: set_animator_trigger
        type: array_of__config_ai_mixin_set_animator_trigger__length_u
        if: has_field_set_animator_trigger
      - id: set_animator_bool
        type: array_of__config_ai_mixin_set_bool__length_u
        if: has_field_set_animator_bool
      - id: set_animator_int
        type: array_of__config_ai_mixin_set_int__length_u
        if: has_field_set_animator_int
      - id: set_animator_float
        type: array_of__config_ai_mixin_set_float__length_u
        if: has_field_set_animator_float
    instances:
      has_field_set_pose_bool: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_set_pose_int: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_set_pose_float: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_set_animator_trigger: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_set_animator_bool: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_set_animator_int: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_set_animator_float: # Field №6
        value: (bit_field & 0b1000000) != 0
