types:
  product_concert_package_detail_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: original_price_tier
        type: aux_types::string
        if: has_field_original_price_tier
      - id: discount_rate
        type: f4
        if: has_field_discount_rate
      - id: show_id
        type: aux_types::vlq_base128_le_u
        if: has_field_show_id
      - id: replace_mcoin_num
        type: aux_types::vlq_base128_le_u
        if: has_field_replace_mcoin_num
      - id: icon
        type: aux_types::string
        if: has_field_icon
      - id: rank_level
        type: aux_types::vlq_base128_le_u
        if: has_field_rank_level
      - id: item_name
        type: aux_types::vlq_base128_le_u
        if: has_field_item_name
      - id: item_desc
        type: aux_types::vlq_base128_le_u
        if: has_field_item_desc
      - id: sort_level
        type: aux_types::vlq_base128_le_u
        if: has_field_sort_level
      - id: begin_time
        type: aux_types::string
        if: has_field_begin_time
      - id: end_time
        type: aux_types::string
        if: has_field_end_time
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
      has_field_original_price_tier: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_discount_rate: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_show_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_replace_mcoin_num: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_icon: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_rank_level: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_item_name: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_item_desc: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_sort_level: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_begin_time: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_end_time: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_config_id: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_price_tier: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
      has_field_shop_type: # Field №13
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
