meta:
  id: enum__strike_type
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
    enum: strike_type
enums:
  strike_type:
    0: default
    1: slash
    2: blunt
    3: pierce
    4: spear
    5: none
