meta:
  id: shop_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__open_state_type
    - ../EnumType/enum__shop_refresh_type
    - ../EnumType/enum__shop_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: shop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_shop_id
  - id: shop_type
    type: enum__shop_type
    if: has_field_shop_type
  - id: refresh_type
    type: enum__shop_refresh_type
    if: has_field_refresh_type
  - id: refresh_param
    type: aux_types::vlq_base128_le_u
    if: has_field_refresh_param
  - id: open_state_type
    type: enum__open_state_type
    if: has_field_open_state_type
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: city_discount_level
    type: aux_types::vlq_base128_le_u
    if: has_field_city_discount_level
  - id: scoin_discount_rate
    type: aux_types::vlq_base128_le_u
    if: has_field_scoin_discount_rate
  - id: vip_func_id
    type: aux_types::vlq_base128_le_u
    if: has_field_vip_func_id
instances:
  has_field_shop_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_shop_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_refresh_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_refresh_param: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_open_state_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_city_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_city_discount_level: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_scoin_discount_rate: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_vip_func_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
