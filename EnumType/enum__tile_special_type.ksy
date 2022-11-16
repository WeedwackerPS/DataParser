meta:
  id: enum__tile_special_type
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
    enum: tile_special_type
enums:
  tile_special_type:
    0: none
    1: world_type_begin
    2: world_grass
    3: world_water
    4: world_electric_water
    5: world_type_end
    6: count
