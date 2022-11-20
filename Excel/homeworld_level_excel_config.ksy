meta:
  id: homeworld_level_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: exp
    type: aux_types::vlq_base128_le_u
    if: has_field_exp
  - id: comfort_point_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_comfort_point_limit
  - id: home_coin_store_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_home_coin_store_limit
  - id: home_fetter_exp_store_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_home_fetter_exp_store_limit
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: furniture_make_slot_count
    type: aux_types::vlq_base128_le_u
    if: has_field_furniture_make_slot_count
  - id: outdoor_unlock_block_count
    type: aux_types::vlq_base128_le_u
    if: has_field_outdoor_unlock_block_count
  - id: free_unlock_module_count
    type: aux_types::vlq_base128_le_u
    if: has_field_free_unlock_module_count
  - id: deploy_npc_count
    type: aux_types::vlq_base128_le_u
    if: has_field_deploy_npc_count
  - id: djinn_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_djinn_gadget_id
  - id: limit_shop_goods_count
    type: aux_types::vlq_base128_le_u
    if: has_field_limit_shop_goods_count
  - id: limit_shop_goods_extra_count
    type: aux_types::vlq_base128_le_u
    if: has_field_limit_shop_goods_extra_count
  - id: level_funcs
    type: array_of__aux_types__string__length_u
    if: has_field_level_funcs
instances:
  has_field_level: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_exp: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_comfort_point_limit: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_home_coin_store_limit: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_home_fetter_exp_store_limit: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_reward_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_furniture_make_slot_count: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_outdoor_unlock_block_count: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_free_unlock_module_count: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_deploy_npc_count: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_djinn_gadget_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_limit_shop_goods_count: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_limit_shop_goods_extra_count: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_level_funcs: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
