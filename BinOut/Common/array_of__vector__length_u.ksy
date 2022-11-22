meta:
  id: array_of__vector__length_u
  endian: le
  license: GPLv2
  imports:
    - vector
    - ../../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: vector
    repeat: expr
    repeat-expr: length.value
