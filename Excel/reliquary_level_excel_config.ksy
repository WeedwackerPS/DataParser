meta:
  id: reliquary_level_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - Common/array_of__prop_val_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: rank
    type: aux_types::vlq_base128_le_u
    if: has_field_rank
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: exp
    type: aux_types::vlq_base128_le_u
    if: has_field_exp
  - id: add_props
    type: array_of__prop_val_config__length_s
    if: has_field_add_props
instances:
  has_field_rank: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_exp: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_add_props: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
