meta:
  id: enum__arith_type
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
    enum: arith_type
enums:
  arith_type:
    0: arith_none
    1: arith_add
    2: arith_multi
    3: arith_sub
    4: arith_divide
