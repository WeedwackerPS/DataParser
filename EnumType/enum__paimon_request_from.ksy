meta:
  id: enum__paimon_request_from
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
    enum: paimon_request_from
enums:
  paimon_request_from:
    1: self_tick
    2: dev_ui
    3: task
    4: navigation
