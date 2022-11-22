types:
  config_guide_camera_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: action
        type: enum__guide_camera_action
        if: has_field_action
      - id: param
        type: f4
        if: has_field_param
    instances:
      has_field_action: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_param: # Field №1
        value: (bit_field & 0b10) != 0
