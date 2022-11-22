types:
  price_tier_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: tier_name
        type: aux_types::string
        if: has_field_tier_name
      - id: vip_point
        type: aux_types::vlq_base128_le_u
        if: has_field_vip_point
    instances:
      has_field_tier_name: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_vip_point: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
