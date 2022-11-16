meta:
  id: enum__monitor_type
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
    enum: monitor_type
enums:
  monitor_type:
    0: monitor_never
    1: monitor_off_stage
    2: monitor_on_stage
    3: monitor_always
