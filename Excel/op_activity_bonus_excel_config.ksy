meta:
  id: op_activity_bonus_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../EnumType/enum__op_activity_bonus_source_type
    - ../EnumType/enum__op_activity_track_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: bonus_id
    type: aux_types::vlq_base128_le_u
    if: has_field_bonus_id
  - id: source_type
    type: enum__op_activity_bonus_source_type
    if: has_field_source_type
  - id: source_param
    type: aux_types::string
    if: has_field_source_param
  - id: open_level
    type: aux_types::vlq_base128_le_u
    if: has_field_open_level
  - id: bonus_ratio
    type: aux_types::vlq_base128_le_u
    if: has_field_bonus_ratio
  - id: text_map_id_list
    type: array_of__aux_types__string__length_u
    if: has_field_text_map_id_list
  - id: track_type
    type: enum__op_activity_track_type
    if: has_field_track_type
  - id: track_para
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_track_para
instances:
  has_field_bonus_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_source_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_source_param: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_open_level: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_bonus_ratio: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_text_map_id_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_track_type: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_track_para: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
