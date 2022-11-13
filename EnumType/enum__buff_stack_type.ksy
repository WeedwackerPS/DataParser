meta:
  id: enum__buff_stack_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__buff_stack_type:
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
