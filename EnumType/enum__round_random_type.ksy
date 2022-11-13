meta:
  id: enum__round_random_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__round_random_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: round_random_type
enums:
  round_random_type:
    0: none
    1: floor
    2: ceil
    3: round
