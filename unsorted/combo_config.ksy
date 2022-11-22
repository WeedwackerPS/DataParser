types:
  combo_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: combo_up_limit
        type: aux_types::vlq_base128_le_u
        if: has_field_combo_up_limit
      - id: rate
        type: f4
        if: has_field_rate
    instances:
      has_field_combo_up_limit: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_rate: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
