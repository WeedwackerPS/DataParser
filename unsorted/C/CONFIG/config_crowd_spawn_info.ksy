types:
  config_crowd_spawn_info:
    seq:
      - id: bit_field
        type: u1
      - id: crowd_type_id
        type: aux_types::vlq_base128_le_s
        if: has_field_crowd_type_id
      - id: anim_config_id
        type: aux_types::vlq_base128_le_s
        if: has_field_anim_config_id
      - id: spawn_position
        type: vector
        if: has_field_spawn_position
      - id: spawn_face_fwd
        type: vector
        if: has_field_spawn_face_fwd
      - id: has_collider
        type: u1
        if: has_field_has_collider
      - id: sit_on_chair
        type: u1
        if: has_field_sit_on_chair
      - id: hair_color
        type: color_vector
        if: has_field_hair_color
      - id: body_colors
        type: array_of__color_vector__length_u
        if: has_field_body_colors
    instances:
      has_field_crowd_type_id: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_anim_config_id: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_spawn_position: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_spawn_face_fwd: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_has_collider: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_sit_on_chair: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_hair_color: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_body_colors: # Field №7
        value: (bit_field & 0b10000000) != 0
