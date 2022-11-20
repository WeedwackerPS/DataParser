meta:
  id: enum__inter_priority_type
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
    enum: inter_priority_type
enums:
  inter_priority_type:
    0: override
    1: insert
    2: additive
    3: free_to_do
