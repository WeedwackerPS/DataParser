meta:
  id: enum__inter_priority_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__inter_priority_type:
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