types:
  config_guide_fly_finish_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: time
        type: f4
        if: has_field_time
    instances:
      has_field_time: # Field №0
        value: (bit_field & 0b1) != 0
