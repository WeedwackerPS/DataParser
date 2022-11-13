meta:
  id: enum__explore_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__explore_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: explore_type
enums:
  explore_type:
    0: explore_none
    1: explore_chest
    2: explore_temple
    3: explore_gather
