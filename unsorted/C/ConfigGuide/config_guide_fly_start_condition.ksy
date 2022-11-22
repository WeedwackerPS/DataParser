types:
  config_guide_fly_start_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: height
        type: f4
        if: has_field_height
    instances:
      has_field_height: # Field №0
        value: (bit_field & 0b1) != 0
