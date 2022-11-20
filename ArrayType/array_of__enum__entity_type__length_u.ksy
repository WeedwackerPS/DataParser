meta:
  id: array_of__enum__entity_type__length_u
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../EnumType/enum__entity_type
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: enum__entity_type
    repeat: expr
    repeat-expr: length.value
