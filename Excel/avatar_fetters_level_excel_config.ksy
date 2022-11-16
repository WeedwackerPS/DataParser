meta:
  id: avatar_fetters_level_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: fetter_level
    type: aux_types::vlq_base128_le_u
    if: has_field_fetter_level
  - id: need_exp
    type: aux_types::vlq_base128_le_u
    if: has_field_need_exp
instances:
  has_field_fetter_level: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_need_exp: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
