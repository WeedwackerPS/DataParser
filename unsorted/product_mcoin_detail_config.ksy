types:
  product_mcoin_detail_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: item_name
        type: aux_types::vlq_base128_le_u
        if: has_field_item_name
      - id: prim_name
        type: aux_types::vlq_base128_le_u
        if: has_field_prim_name
      - id: icon
        type: aux_types::string
        if: has_field_icon
      - id: mcoin_num
        type: aux_types::vlq_base128_le_u
        if: has_field_mcoin_num
      - id: mcoin_non_first
        type: aux_types::vlq_base128_le_u
        if: has_field_mcoin_non_first
      - id: mcoin_first
        type: aux_types::vlq_base128_le_u
        if: has_field_mcoin_first
      - id: seqence
        type: aux_types::vlq_base128_le_u
        if: has_field_seqence
      - id: config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_config_id
      - id: price_tier
        type: aux_types::string
        if: has_field_price_tier
      - id: shop_type
        type: enum__shop_type
        if: has_field_shop_type
    instances:
      has_field_item_name: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_prim_name: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_icon: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_mcoin_num: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_mcoin_non_first: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_mcoin_first: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_seqence: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_config_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_price_tier: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_shop_type: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
