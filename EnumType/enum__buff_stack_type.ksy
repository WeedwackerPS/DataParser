meta:
  id: enum__buff_stack_type
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
    enum: buff_stack_type
enums:
  buff_stack_type:
    0: buff_refresh
    1: buff_extend
    2: buff_stack
