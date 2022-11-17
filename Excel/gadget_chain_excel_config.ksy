meta:
  id: gadget_chain_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: chain_id
    type: aux_types::vlq_base128_le_u
    if: has_field_chain_id
  - id: init_level
    type: aux_types::vlq_base128_le_u
    if: has_field_init_level
  - id: max_level
    type: aux_types::vlq_base128_le_u
    if: has_field_max_level
  - id: buff_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_buff_list
instances:
  has_field_chain_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_init_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_max_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_buff_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
