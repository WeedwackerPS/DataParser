meta:
  id: mechanicus_gear_level_up_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - Common/array_of__sgv_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: gear_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_id
  - id: gear_level
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_level
  - id: gear_level_up_money
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_level_up_money
  - id: gear_name
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_name
  - id: gear_short_name
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_short_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: gear_icon_path
    type: aux_types::string
    if: has_field_gear_icon_path
  - id: attack
    type: aux_types::vlq_base128_le_u
    if: has_field_attack
  - id: attack_speed
    type: aux_types::vlq_base128_le_u
    if: has_field_attack_speed
  - id: attack_range
    type: aux_types::vlq_base128_le_u
    if: has_field_attack_range
  - id: build_cost
    type: aux_types::vlq_base128_le_u
    if: has_field_build_cost
  - id: demolition_refund
    type: aux_types::vlq_base128_le_u
    if: has_field_demolition_refund
  - id: global_value_param
    type: array_of__sgv_config__length_s
    if: has_field_global_value_param
  - id: effect_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_effect_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gear_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_gear_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_gear_level_up_money: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_gear_name: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_gear_short_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_gear_icon_path: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_attack: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_attack_speed: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_attack_range: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_build_cost: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_demolition_refund: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_global_value_param: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_effect_list: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
