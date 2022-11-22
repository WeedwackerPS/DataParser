types:
  config_frame_transition:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: duration
        type: f4
        if: has_field_duration
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_duration: # Field №1
        value: (bit_field & 0b10) != 0
