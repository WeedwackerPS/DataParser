meta:
  id: enum__select_targets_sort_type
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
    enum: select_targets_sort_type
enums:
  select_targets_sort_type:
    0: default
    1: reversed
    2: nearest
    3: random
    4: higher_score
    5: low_hp_ratio
