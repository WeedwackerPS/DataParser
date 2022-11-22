types:
  config_guide_level_type_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: type
        type: enum__guide_level_type
        if: has_field_type
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b1) != 0
