meta:
  id: enum__inter_timing_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__inter_timing_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: inter_timing_type
enums:
  inter_timing_type:
    0: enter
    1: btn
    2: exit
