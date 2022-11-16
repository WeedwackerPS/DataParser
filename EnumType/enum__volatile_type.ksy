meta:
  id: enum__volatile_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: volatile_type
enums:
  volatile_type:
    0: default
    1: topmost
    2: high
    3: middle
    4: low
    5: very_low
    6: off
