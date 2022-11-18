meta:
  id: match_cond
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../aux_types
    - ../../EnumType/enum__match_limit_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: type
    type: enum__match_limit_type
    if: has_field_type
  - id: param
    type: aux_types::vlq_base128_le_s
    if: has_field_param
instances:
  has_field_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_param: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
