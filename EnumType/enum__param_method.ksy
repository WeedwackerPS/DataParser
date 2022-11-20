meta:
  id: enum__param_method
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
    enum: param_method
enums:
  param_method:
    0: replace
    1: add
    2: minus
    3: one_add_multipled
    4: negative
