meta:
  id: enum__home_world_area_type
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
    enum: home_world_area_type
enums:
  home_world_area_type:
    0: interior_area
    1: exterior_area
