meta:
  id: enum__level_option
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__level_option:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: level_option
enums:
  level_option:
    0: none
    1: dungeon_level
    2: world_level
