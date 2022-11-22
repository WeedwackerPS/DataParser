types:
  config_guide_level_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: limit_level
        type: aux_types::vlq_base128_le_u
        if: has_field_limit_level
      - id: is_less
        type: u1
        if: has_field_is_less
    instances:
      has_field_limit_level: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_less: # Field №1
        value: (bit_field & 0b10) != 0
