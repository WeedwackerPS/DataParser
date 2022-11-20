meta:
  id: enum__scene_type
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
    enum: scene_type
enums:
  scene_type:
    0: scene_none
    1: scene_world
    2: scene_dungeon
    3: scene_room
    4: scene_home_world
    5: scene_home_room
    6: scene_activity
