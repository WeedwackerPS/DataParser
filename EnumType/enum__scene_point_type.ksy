meta:
  id: enum__scene_point_type
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
    enum: scene_point_type
enums:
  scene_point_type:
    0: normal
    1: tower
    2: portal
    3: other
