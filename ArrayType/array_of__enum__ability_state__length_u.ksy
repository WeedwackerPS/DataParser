meta:
  id: array_of__enum__ability_state__length_u
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__ability_state
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: enum__ability_state
    repeat: expr
    repeat-expr: length.value
