meta:
  id: enum__quest_cond_compare_type
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
    enum: quest_cond_compare_type
enums:
  quest_cond_compare_type:
    0: equal
    1: greater_than
    2: less_than
