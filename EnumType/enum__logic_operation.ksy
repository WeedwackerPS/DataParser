meta:
  id: enum__logic_operation
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: logic_operation
enums:
  logic_operation:
    0: and_
    1: or_
    2: not_
