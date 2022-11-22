types:
  shopmall_recommend_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: sub_tab_id
        type: aux_types::vlq_base128_le_u
        if: has_field_sub_tab_id
      - id: tab_type
        type: enum__shop_recommend_tab_type
        if: has_field_tab_type
      - id: shop_type
        type: enum__shop_type
        if: has_field_shop_type
      - id: goods_id_vec
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_goods_id_vec
      - id: config_id_vec
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_config_id_vec
      - id: cond_comb
        type: enum__logic_type
        if: has_field_cond_comb
      - id: cond_vec
        type: array_of__shopmall_recommend_cond__length_s
        if: has_field_cond_vec
      - id: order
        type: aux_types::vlq_base128_le_u
        if: has_field_order
      - id: tag_type
        type: enum__shop_recommend_tag_type
        if: has_field_tag_type
      - id: one_card_icon_name
        type: aux_types::string
        if: has_field_one_card_icon_name
      - id: col_show_icon_name
        type: array_of__aux_types__string__length_u
        if: has_field_col_show_icon_name
      - id: jump_entrance_id
        type: aux_types::vlq_base128_le_u
        if: has_field_jump_entrance_id
      - id: show_sale_remain_time
        type: u1
        if: has_field_show_sale_remain_time
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_sub_tab_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_tab_type: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_shop_type: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_goods_id_vec: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_config_id_vec: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_cond_comb: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_cond_vec: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_order: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_tag_type: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_one_card_icon_name: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_col_show_icon_name: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_jump_entrance_id: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
      has_field_show_sale_remain_time: # Field №13
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
