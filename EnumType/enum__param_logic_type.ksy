meta:
  id: enum__param_logic_type
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
    enum: param_logic_type
enums:
  param_logic_type:
    0: replace
    1: add
