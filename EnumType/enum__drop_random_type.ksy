meta:
  id: enum__drop_random_type
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
    enum: drop_random_type
enums:
  drop_random_type:
    0: drop_random_by_weight
    1: drop_random_independent
