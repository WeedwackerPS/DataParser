meta:
  id: feature_tag_group_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: tag_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_tag_i_ds
instances:
  has_field_group_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_tag_i_ds: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
