meta:
  id: enum__ornaments_type
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
    enum: ornaments_type
enums:
  ornaments_type:
    0: none
    1: fly
