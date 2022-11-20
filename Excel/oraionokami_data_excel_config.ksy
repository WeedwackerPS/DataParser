meta:
  id: oraionokami_data_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: gadget_chain_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_chain_id
  - id: gadget_chain_level
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_chain_level
  - id: server_buff_id
    type: aux_types::vlq_base128_le_u
    if: has_field_server_buff_id
  - id: desc_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_desc_id_list
  - id: desc_title
    type: aux_types::vlq_base128_le_u
    if: has_field_desc_title
  - id: desc_content
    type: aux_types::vlq_base128_le_u
    if: has_field_desc_content
  - id: desc_skill
    type: aux_types::vlq_base128_le_u
    if: has_field_desc_skill
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: type_level
    type: aux_types::vlq_base128_le_u
    if: has_field_type_level
  - id: icon_path
    type: aux_types::string
    if: has_field_icon_path
instances:
  has_field_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gadget_chain_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_gadget_chain_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_server_buff_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_desc_id_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_desc_title: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_desc_content: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_desc_skill: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_group_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_type_level: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_icon_path: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
