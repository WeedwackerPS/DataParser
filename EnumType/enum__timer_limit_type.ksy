meta:
  id: enum__timer_limit_type
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
    enum: timer_limit_type
enums:
  timer_limit_type:
    0: finite
    1: infinite
