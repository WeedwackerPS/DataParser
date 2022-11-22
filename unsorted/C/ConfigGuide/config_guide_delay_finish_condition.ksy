types:
  config_guide_delay_finish_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: delay_time
        type: f4
        if: has_field_delay_time
    instances:
      has_field_delay_time: # Field №0
        value: (bit_field & 0b1) != 0
