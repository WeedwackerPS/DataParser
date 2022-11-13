meta:
  id: enum__involve_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__involve_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: involve_type
enums:
  involve_type:
    0: involve_none
    1: involve_only_single
    2: involve_single_multiple
    3: involve_dynamic_multiple
    4: involve_only_multiple
