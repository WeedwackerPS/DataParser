meta:
  id: array_of__u1__length_u
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: u1
    repeat: expr
    repeat-expr: length.value
