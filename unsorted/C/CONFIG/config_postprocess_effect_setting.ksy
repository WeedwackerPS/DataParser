types:
  config_postprocess_effect_setting:
    seq:
      - id: bit_field
        type: u1
      - id: use_half_shadows
        type: u1
        if: has_field_use_half_shadows
      - id: use_shadow_cache
        type: u1
        if: has_field_use_shadow_cache
      - id: checkboard_type
        type: enum__checkboard_type
        if: has_field_checkboard_type
      - id: ao_mode
        type: enum__ssao_mode
        if: has_field_ao_mode
      - id: enable_motion_blur
        type: u1
        if: has_field_enable_motion_blur
      - id: motion_blur_quality
        type: enum__motion_blur_quality
        if: has_field_motion_blur_quality
    instances:
      has_field_use_half_shadows: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_use_shadow_cache: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_checkboard_type: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_ao_mode: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_enable_motion_blur: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_motion_blur_quality: # Field №5
        value: (bit_field & 0b100000) != 0
