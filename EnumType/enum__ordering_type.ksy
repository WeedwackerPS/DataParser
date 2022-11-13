meta:
  id: enum__ordering_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ordering_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: ordering_type
enums:
  ordering_type:
    0: less
    1: equal
    2: greater
    3: less_or_equal
    4: greater_or_equal
