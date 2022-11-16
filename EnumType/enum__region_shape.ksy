meta:
  id: enum__region_shape
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
    enum: region_shape
enums:
  region_shape:
    0: region_none
    1: region_sphere
    2: region_cubic
    3: region_cylinder
    4: region_polygon
