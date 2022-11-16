meta:
  id: enum__stand_direction
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
    enum: stand_direction
enums:
  stand_direction:
    0: left
    1: front
    2: right
