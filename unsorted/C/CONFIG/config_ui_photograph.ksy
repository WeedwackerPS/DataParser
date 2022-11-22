types:
  config_ui_photograph:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: fov_max
        type: f4
        if: has_field_fov_max
      - id: fov_min
        type: f4
        if: has_field_fov_min
      - id: camera_shift_up
        type: f4
        if: has_field_camera_shift_up
      - id: camera_shift_down
        type: f4
        if: has_field_camera_shift_down
      - id: camera_shift_left
        type: f4
        if: has_field_camera_shift_left
      - id: camera_shift_right
        type: f4
        if: has_field_camera_shift_right
      - id: blur_distance
        type: f4
        if: has_field_blur_distance
      - id: blur_range
        type: f4
        if: has_field_blur_range
      - id: blur_amount
        type: f4
        if: has_field_blur_amount
    instances:
      has_field_fov_max: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_fov_min: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_camera_shift_up: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_camera_shift_down: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_camera_shift_left: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_camera_shift_right: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_blur_distance: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_blur_range: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_blur_amount: # Field №8
        value: (bit_field.value & 0b100000000) != 0
