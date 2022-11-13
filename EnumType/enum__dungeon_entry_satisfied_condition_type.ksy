meta:
  id: enum__dungeon_entry_satisfied_condition_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__dungeon_entry_satisfied_condition_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: dungeon_entry_satisfied_condition_type
enums:
  dungeon_entry_satisfied_condition_type:
    0: dungeon_entry_condition_none
    1: dungeon_entry_condition_level
    2: dungeon_entry_condition_quest
