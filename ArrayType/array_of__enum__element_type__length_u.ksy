meta:
  id: array_of__enum__element_type__length_u
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__element_type
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: enum__element_type
    repeat: expr
    repeat-expr: length.value
