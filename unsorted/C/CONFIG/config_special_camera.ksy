types:
  config_special_camera:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: priority
        type: f4
        if: has_field_priority
      - id: enter_radius
        type: f4
        if: has_field_enter_radius
      - id: exit_radius
        type: f4
        if: has_field_exit_radius
      - id: height_adjust
        type: f4
        if: has_field_height_adjust
      - id: fov
        type: f4
        if: has_field_fov
      - id: zoom
        type: f4
        if: has_field_zoom
      - id: spherical_y
        type: f4
        if: has_field_spherical_y
      - id: lock_spherical_y
        type: u1
        if: has_field_lock_spherical_y
      - id: spherical_y_up
        type: f4
        if: has_field_spherical_y_up
      - id: spherical_y_down
        type: f4
        if: has_field_spherical_y_down
      - id: auto_turn_start_min
        type: f4
        if: has_field_auto_turn_start_min
      - id: auto_turn_start_max
        type: f4
        if: has_field_auto_turn_start_max
      - id: auto_turn_end_min
        type: f4
        if: has_field_auto_turn_end_min
      - id: auto_turn_end_max
        type: f4
        if: has_field_auto_turn_end_max
    instances:
      has_field_priority: # Field №0
        value: (bit_field.value & 0000001) != 0
      has_field_enter_radius: # Field №1
        value: (bit_field.value & 0000010) != 0
      has_field_exit_radius: # Field №2
        value: (bit_field.value & 0000100) != 0
      has_field_height_adjust: # Field №3
        value: (bit_field.value & 0001000) != 0
      has_field_fov: # Field №4
        value: (bit_field.value & 0010000) != 0
      has_field_zoom: # Field №5
        value: (bit_field.value & 0100000) != 0
      has_field_spherical_y: # Field №6
        value: (bit_field.value & 0b00000001000000) != 0
      has_field_lock_spherical_y: # Field №7
        value: (bit_field.value & 0b00000010000000) != 0
      has_field_spherical_y_up: # Field №8
        value: (bit_field.value & 0b00000100000000) != 0
      has_field_spherical_y_down: # Field №9
        value: (bit_field.value & 0b00001000000000) != 0
      has_field_auto_turn_start_min: # Field №10
        value: (bit_field.value & 0b00010000000000) != 0
      has_field_auto_turn_start_max: # Field №11
        value: (bit_field.value & 0b00100000000000) != 0
      has_field_auto_turn_end_min: # Field №12
        value: (bit_field.value & 0b01000000000000) != 0
      has_field_auto_turn_end_max: # Field №13
        value: (bit_field.value & 0b10000000000000) != 0
