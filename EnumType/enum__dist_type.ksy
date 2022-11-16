meta:
  id: enum__dist_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: dist_type
enums:
  dist_type:
    0: euler
    1: euler_xz
