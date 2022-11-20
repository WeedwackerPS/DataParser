meta:
  id: reputation_city_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__open_state_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: explore_area_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_explore_area_vec
  - id: virtual_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_virtual_item_id
  - id: open_state
    type: enum__open_state_type
    if: has_field_open_state
  - id: bg_icon_path
    type: aux_types::string
    if: has_field_bg_icon_path
  - id: bg_effect_path
    type: aux_types::string
    if: has_field_bg_effect_path
  - id: explain_title
    type: aux_types::vlq_base128_le_u
    if: has_field_explain_title
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: reward_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_item_id
  - id: reward_item_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_item_desc
  - id: reward_item_icon
    type: aux_types::string
    if: has_field_reward_item_icon
  - id: reward_bg_icon
    type: aux_types::string
    if: has_field_reward_bg_icon
  - id: city_icon
    type: aux_types::string
    if: has_field_city_icon
instances:
  has_field_city_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_explore_area_vec: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_virtual_item_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_open_state: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_bg_icon_path: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_bg_effect_path: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_explain_title: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_desc: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_reward_item_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_reward_item_desc: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_reward_item_icon: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_reward_bg_icon: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_city_icon: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
