types:
  first_person_coop_cam_config:
    seq:
      - id: bit_field
        type: u1
      - id: cam_position_offset
        type: vector
        if: has_field_cam_position_offset
      - id: cam_target_offset
        type: vector
        if: has_field_cam_target_offset
      - id: cam_fov
        type: f4
        if: has_field_cam_fov
    instances:
      has_field_cam_position_offset: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_cam_target_offset: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_cam_fov: # Field №2
        value: (bit_field & 0b100) != 0
