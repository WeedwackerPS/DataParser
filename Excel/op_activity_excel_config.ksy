meta:
  id: op_activity_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../EnumType/enum__op_activity_bonus_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: op_activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_op_activity_id
  - id: bonus_type
    type: enum__op_activity_bonus_type
    if: has_field_bonus_type
  - id: bonus_value
    type: aux_types::vlq_base128_le_u
    if: has_field_bonus_value
  - id: bonus_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_bonus_list
  - id: icon
    type: aux_types::vlq_base128_le_u
    if: has_field_icon
  - id: tab_text
    type: aux_types::string
    if: has_field_tab_text
  - id: text_map_id_list
    type: array_of__aux_types__string__length_u
    if: has_field_text_map_id_list
instances:
  has_field_op_activity_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_bonus_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_bonus_value: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_bonus_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_icon: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_tab_text: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_text_map_id_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
