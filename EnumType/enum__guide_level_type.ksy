meta:
  id: enum__guide_level_type
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
    enum: guide_level_type
enums:
  guide_level_type:
    0: all
    1: not_dungeon
    2: only_big_world
