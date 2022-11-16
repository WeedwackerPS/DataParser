meta:
  id: enum__strengthen_dungeon_type
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
    enum: strengthen_dungeon_type
enums:
  strengthen_dungeon_type:
    0: dungeon_type_none
    1: dungeon_type_boss
    2: dungeon_type_break
    3: dungeon_type_normal
    4: dungeon_type_daily
    5: dungeon_type_tower
    6: dungeon_type_effigy
