meta:
  id: enum__guide_operator
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: guide_operator
enums:
  guide_operator:
    0: equal
    1: greater
    2: less
    3: greater_equal
    4: less_equal
