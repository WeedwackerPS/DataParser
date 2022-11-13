meta:
  id: enum__op_activity_bonus_source_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__op_activity_bonus_source_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: op_activity_bonus_source_type
enums:
  op_activity_bonus_source_type:
    0: source_type_none
    1: source_type_blossom
    2: source_type_dungeon
