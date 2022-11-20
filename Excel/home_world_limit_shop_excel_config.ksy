meta:
  id: home_world_limit_shop_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__home_world_limit_shop_cond_type
    - Common/array_of__id_count_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: goods_id
    type: aux_types::vlq_base128_le_u
    if: has_field_goods_id
  - id: item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_item_id
  - id: pool_id
    type: aux_types::vlq_base128_le_u
    if: has_field_pool_id
  - id: condition
    type: enum__home_world_limit_shop_cond_type
    if: has_field_condition
  - id: condition_param
    type: aux_types::vlq_base128_le_s
    if: has_field_condition_param
  - id: buy_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_buy_limit
  - id: cost_items
    type: array_of__id_count_config__length_s
    if: has_field_cost_items
  - id: weight
    type: aux_types::vlq_base128_le_u
    if: has_field_weight
instances:
  has_field_goods_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_item_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_pool_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_condition: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_condition_param: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_buy_limit: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_cost_items: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_weight: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
