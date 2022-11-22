types:
  face_animation_t_setting_path_config:
    seq:
      - id: bit_field
        type: u1
      - id: path
        type: aux_types::string
        if: has_field_path
    instances:
      has_field_path: # Field №0
        value: (bit_field & 0b1) != 0
