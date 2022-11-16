meta:
  id: enum__effigy_difficulty
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
    enum: effigy_difficulty
enums:
  effigy_difficulty:
    0: effigy_difficulty_none
    1: effigy_difficulty_primer
    2: effigy_difficulty_normal
    3: effigy_difficulty_hard
    4: effigy_difficulty_expert
