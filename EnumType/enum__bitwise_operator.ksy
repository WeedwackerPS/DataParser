meta:
  id: enum__bitwise_operator
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
    enum: bitwise_operator
enums:
  bitwise_operator:
    0: and_
    1: or_
    2: not_
    3: xor
