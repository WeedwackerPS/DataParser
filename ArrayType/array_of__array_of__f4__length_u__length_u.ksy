meta:
  id: array_of__array_of__f4__length_u__length_u
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - array_of__f4__length_u
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: array_of__f4__length_u
    repeat: expr
    repeat-expr: length.value
