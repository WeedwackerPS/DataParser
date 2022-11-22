types:
  lamp_region_data_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: region
        type: aux_types::string
        if: has_field_region
      - id: factor
        type: aux_types::vlq_base128_le_u
        if: has_field_factor
    instances:
      has_field_region: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_factor: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
