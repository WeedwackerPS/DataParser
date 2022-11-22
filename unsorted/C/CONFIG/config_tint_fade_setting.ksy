types:
  config_tint_fade_setting:
    seq:
      - id: bit_field
        type: u1
      - id: tint_distance
        type: f4
        if: has_field_tint_distance
      - id: tint_size
        type: aux_types::vlq_base128_le_s
        if: has_field_tint_size
    instances:
      has_field_tint_distance: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_tint_size: # Field №1
        value: (bit_field & 0b10) != 0
