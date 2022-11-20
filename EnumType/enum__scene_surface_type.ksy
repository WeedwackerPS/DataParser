meta:
  id: enum__scene_surface_type
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
    enum: scene_surface_type
enums:
  scene_surface_type:
    0: invalid
    1: grass
    2: dirt
    3: rock
    4: snow
    5: water
    6: tile
    7: sand
    8: wood
    9: iron
    10: tree
    11: ice
    12: marble
    13: carpet
    14: wood_log
    15: cloud
    16: coin
    17: snow_rock
    18: electric_water
    19: sakura
