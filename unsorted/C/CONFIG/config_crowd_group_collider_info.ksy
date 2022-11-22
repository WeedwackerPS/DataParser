types:
  config_crowd_group_collider_info:
    seq:
      - id: bit_field
        type: u1
      - id: spawn_position
        type: vector
        if: has_field_spawn_position
      - id: spawn_face_fwd
        type: vector
        if: has_field_spawn_face_fwd
      - id: height
        type: f4
        if: has_field_height
      - id: radius
        type: f4
        if: has_field_radius
    instances:
      has_field_spawn_position: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_spawn_face_fwd: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_height: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_radius: # Field №3
        value: (bit_field & 0b1000) != 0
