types:
  product_detail_config:
    seq:
      - id: bit_field
        type: u1
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
      has_field_config_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_price_tier: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_shop_type: # Field №2
        value: (bit_field & 0b100) != 0
