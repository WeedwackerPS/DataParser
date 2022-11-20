meta:
  id: enum__move_platform_delay_type
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
    enum: move_platform_delay_type
enums:
  move_platform_delay_type:
    0: no_delay
    1: normal
    2: long
