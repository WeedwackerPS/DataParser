meta:
  id: furniture_suite_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: suite_id
    type: aux_types::vlq_base128_le_u
    if: has_field_suite_id
  - id: json_name
    type: aux_types::string
    if: has_field_json_name
  - id: suite_name
    type: aux_types::vlq_base128_le_u
    if: has_field_suite_name
  - id: suite_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_suite_desc
  - id: drawing_id
    type: aux_types::vlq_base128_le_u
    if: has_field_drawing_id
  - id: favorite_npc_excel_id_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_favorite_npc_excel_id_vec
  - id: trans_str
    type: aux_types::string
    if: has_field_trans_str
  - id: furn_type
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_furn_type
  - id: item_icon
    type: aux_types::string
    if: has_field_item_icon
  - id: map_icon
    type: aux_types::string
    if: has_field_map_icon
  - id: inter_ratio
    type: f4
    if: has_field_inter_ratio
instances:
  has_field_suite_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_json_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_suite_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_suite_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_drawing_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_favorite_npc_excel_id_vec: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_trans_str: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_furn_type: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_item_icon: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_map_icon: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_inter_ratio: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
