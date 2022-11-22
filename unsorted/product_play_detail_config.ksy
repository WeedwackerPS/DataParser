types:
  product_play_detail_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: play_type
        type: enum__product_play_type
        if: has_field_play_type
      - id: item_name
        type: aux_types::vlq_base128_le_u
        if: has_field_item_name
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
      has_field_play_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_item_name: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_config_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_price_tier: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_shop_type: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
