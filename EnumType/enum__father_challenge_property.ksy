meta:
  id: enum__father_challenge_property
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__father_challenge_property:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: father_challenge_property
enums:
  father_challenge_property:
    0: duration
    1: cur_succ
    2: cur_fail
    3: sum_succ
    4: sum_fail
