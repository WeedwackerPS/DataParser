meta:
  id: enum__stack_method
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
    enum: stack_method
enums:
  stack_method:
    0: top
    1: sum
    2: multiplied
    3: one_minus_multiplied
