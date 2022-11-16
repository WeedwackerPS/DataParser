meta:
  id: enum__ssao_mode
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
    enum: ssao_mode
enums:
  ssao_mode:
    0: disable
    1: ssao
    2: hbao
