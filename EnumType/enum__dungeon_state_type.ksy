meta:
  id: enum__dungeon_state_type
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
    enum: dungeon_state_type
enums:
  dungeon_state_type:
    0: dungeon_state_none
    1: dungeon_state_release
    2: dungeon_state_test
