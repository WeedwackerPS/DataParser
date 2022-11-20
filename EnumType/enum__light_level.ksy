meta:
  id: enum__light_level
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
    enum: light_level
enums:
  light_level:
    0: low
    1: middle
    2: high
    3: invalid
