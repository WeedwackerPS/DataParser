types:
  config_camera_move:
    seq:
      - id: bit_field
        type: u1
      - id: cfg_path
        type: aux_types::string
        if: has_field_cfg_path
    instances:
      has_field_cfg_path: # Field №0
        value: (bit_field & 0b1) != 0
