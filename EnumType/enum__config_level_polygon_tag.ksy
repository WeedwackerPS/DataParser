meta:
  id: enum__config_level_polygon_tag
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
    enum: config_level_polygon_tag
enums:
  config_level_polygon_tag:
    0: plain
    1: forest
    2: hill
    3: water
    4: mountain
