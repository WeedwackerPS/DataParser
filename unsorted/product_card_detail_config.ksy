types:
  product_card_detail_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: card_product_type
        type: enum__card_product_type
        if: has_field_card_product_type
      - id: item_name
        type: aux_types::vlq_base128_le_u
        if: has_field_item_name
      - id: icon
        type: aux_types::string
        if: has_field_icon
      - id: total_limit_days
        type: aux_types::vlq_base128_le_u
        if: has_field_total_limit_days
      - id: days
        type: aux_types::vlq_base128_le_u
        if: has_field_days
      - id: hcoin_per_day
        type: aux_types::vlq_base128_le_u
        if: has_field_hcoin_per_day
      - id: mcoin_base
        type: aux_types::vlq_base128_le_u
        if: has_field_mcoin_base
      - id: base_item_map
        type: dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
        if: has_field_base_item_map
      - id: per_day_item_map
        type: dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
        if: has_field_per_day_item_map
      - id: replace_mcoin_num
        type: aux_types::vlq_base128_le_u
        if: has_field_replace_mcoin_num
      - id: first_reward_text
        type: aux_types::vlq_base128_le_u
        if: has_field_first_reward_text
      - id: daily_reward_text
        type: aux_types::vlq_base128_le_u
        if: has_field_daily_reward_text
      - id: total_reward_text
        type: aux_types::vlq_base128_le_u
        if: has_field_total_reward_text
      - id: total_days_text
        type: aux_types::vlq_base128_le_u
        if: has_field_total_days_text
      - id: remain_days_text
        type: aux_types::vlq_base128_le_u
        if: has_field_remain_days_text
      - id: remain_days_text2
        type: aux_types::vlq_base128_le_u
        if: has_field_remain_days_text2
      - id: explain_title
        type: aux_types::vlq_base128_le_u
        if: has_field_explain_title
      - id: explain_desc
        type: aux_types::vlq_base128_le_u
        if: has_field_explain_desc
      - id: sort_level
        type: aux_types::vlq_base128_le_u
        if: has_field_sort_level
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
      has_field_card_product_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_item_name: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_icon: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_total_limit_days: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_days: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_hcoin_per_day: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_mcoin_base: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_base_item_map: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_per_day_item_map: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_replace_mcoin_num: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_first_reward_text: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_daily_reward_text: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_total_reward_text: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
      has_field_total_days_text: # Field №13
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
      has_field_remain_days_text: # Field №14
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
      has_field_remain_days_text2: # Field №15
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
      has_field_explain_title: # Field №16
        value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
      has_field_explain_desc: # Field №17
        value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
      has_field_sort_level: # Field №18
        value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
      has_field_config_id: # Field №19
        value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
      has_field_price_tier: # Field №20
        value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
      has_field_shop_type: # Field №21
        value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
