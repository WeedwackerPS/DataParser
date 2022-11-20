meta:
  id: enum__gear_type
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
    enum: gear_type
enums:
  gear_type:
    0: none
    1: ray
    2: spray
    3: wall
