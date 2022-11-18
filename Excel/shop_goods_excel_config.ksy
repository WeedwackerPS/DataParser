meta:
  id: shop_goods_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__shop_precondition
    - ../EnumType/enum__shop_refresh_type
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
    - Common/array_of__id_count_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: goods_id
    type: aux_types::vlq_base128_le_u
    if: has_field_goods_id
  - id: sub_tag_name
    type: aux_types::vlq_base128_le_u
    if: has_field_sub_tag_name
  - id: sub_tab_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sub_tab_id
  - id: shop_type
    type: aux_types::vlq_base128_le_u
    if: has_field_shop_type
  - id: item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_item_id
  - id: rotate_id
    type: aux_types::vlq_base128_le_u
    if: has_field_rotate_id
  - id: show_id
    type: aux_types::vlq_base128_le_u
    if: has_field_show_id
  - id: item_count
    type: aux_types::vlq_base128_le_u
    if: has_field_item_count
  - id: cost_scoin
    type: aux_types::vlq_base128_le_u
    if: has_field_cost_scoin
  - id: cost_hcoin
    type: aux_types::vlq_base128_le_u
    if: has_field_cost_hcoin
  - id: cost_mcoin
    type: aux_types::vlq_base128_le_u
    if: has_field_cost_mcoin
  - id: discount_rate
    type: f4
    if: has_field_discount_rate
  - id: original_price
    type: aux_types::vlq_base128_le_u
    if: has_field_original_price
  - id: cost_items
    type: array_of__id_count_config__length_s
    if: has_field_cost_items
  - id: buy_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_buy_limit
  - id: refresh_type
    type: enum__shop_refresh_type
    if: has_field_refresh_type
  - id: refresh_param
    type: aux_types::vlq_base128_le_u
    if: has_field_refresh_param
  - id: display_days_before_sell
    type: aux_types::vlq_base128_le_u
    if: has_field_display_days_before_sell
  - id: begin_time
    type: aux_types::string
    if: has_field_begin_time
  - id: end_time
    type: aux_types::string
    if: has_field_end_time
  - id: is_buy_once
    type: u1
    if: has_field_is_buy_once
  - id: precondition
    type: enum__shop_precondition
    if: has_field_precondition
  - id: precondition_param
    type: aux_types::vlq_base128_le_u
    if: has_field_precondition_param
  - id: precondition_param_list
    type: array_of__aux_types__string__length_u
    if: has_field_precondition_param_list
  - id: precondition_hidden
    type: u1
    if: has_field_precondition_hidden
  - id: min_show_level
    type: aux_types::vlq_base128_le_u
    if: has_field_min_show_level
  - id: min_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_min_player_level
  - id: max_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_max_player_level
  - id: sort_level
    type: aux_types::vlq_base128_le_u
    if: has_field_sort_level
  - id: secondary_sheet_id
    type: aux_types::vlq_base128_le_u
    if: has_field_secondary_sheet_id
  - id: choose_one_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_choose_one_group_id
  - id: platform_type_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_platform_type_list
instances:
  has_field_goods_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_sub_tag_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_sub_tab_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_shop_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_item_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_rotate_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_show_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_item_count: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_cost_scoin: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_cost_hcoin: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_cost_mcoin: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_discount_rate: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_original_price: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_cost_items: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_buy_limit: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_refresh_type: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_refresh_param: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_display_days_before_sell: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_begin_time: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_end_time: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_is_buy_once: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_precondition: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_precondition_param: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_precondition_param_list: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_precondition_hidden: # Field №24
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000001) != 0)
  has_field_min_show_level: # Field №25
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000010) != 0)
  has_field_min_player_level: # Field №26
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000100) != 0)
  has_field_max_player_level: # Field №27
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00001000) != 0)
  has_field_sort_level: # Field №28
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00010000) != 0)
  has_field_secondary_sheet_id: # Field №29
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00100000) != 0)
  has_field_choose_one_group_id: # Field №30
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b01000000) != 0)
  has_field_platform_type_list: # Field №31
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b10000000) != 0)
