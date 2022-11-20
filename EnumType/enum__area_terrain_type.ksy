meta:
  id: enum__area_terrain_type
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
    enum: area_terrain_type
enums:
  area_terrain_type:
    0: area_terrain_none
    1: area_terrain_city
    2: area_terrain_outdoor
