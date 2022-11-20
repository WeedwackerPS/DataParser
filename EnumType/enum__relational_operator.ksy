meta:
  id: enum__relational_operator
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
    enum: relational_operator
enums:
  relational_operator:
    0: greater
    1: greater_or_equal
    2: equal
    3: lesser
    4: lesser_or_equal
