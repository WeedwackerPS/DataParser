types:
  config_guide_check_platform_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: platform
        type: enum__guide_platform
        if: has_field_platform
      - id: value
        type: u1
        if: has_field_value
    instances:
      has_field_platform: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b10) != 0
