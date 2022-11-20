meta:
  id: enum__point_location
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
    enum: point_location
enums:
  point_location:
    0: point_ground
    1: point_air
