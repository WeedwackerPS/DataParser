types:
  config_move_stick_to_ground:
    seq:
      - id: bit_field
        type: u1
      - id: max_step_height
        type: f4
        if: has_field_max_step_height
      - id: max_slope_angle
        type: f4
        if: has_field_max_slope_angle
      - id: height_to_ground
        type: f4
        if: has_field_height_to_ground
      - id: flexible_range
        type: f4
        if: has_field_flexible_range
      - id: is_stick_to_water
        type: u1
        if: has_field_is_stick_to_water
      - id: unstick_when_down_slide
        type: enum__unstick_action
        if: has_field_unstick_when_down_slide
      - id: unstick_when_up_slide
        type: enum__unstick_action
        if: has_field_unstick_when_up_slide
    instances:
      has_field_max_step_height: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_max_slope_angle: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_height_to_ground: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_flexible_range: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_is_stick_to_water: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_unstick_when_down_slide: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_unstick_when_up_slide: # Field №6
        value: (bit_field & 0b1000000) != 0
