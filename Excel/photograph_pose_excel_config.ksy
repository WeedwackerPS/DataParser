meta:
  id: photograph_pose_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: character_id
    type: aux_types::vlq_base128_le_u
    if: has_field_character_id
  - id: pose_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_pose_id
instances:
  has_field_character_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_pose_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
