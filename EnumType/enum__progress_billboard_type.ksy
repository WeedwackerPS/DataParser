meta:
  id: enum__progress_billboard_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__progress_billboard_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: progress_billboard_type
enums:
  progress_billboard_type:
    0: none
    1: miracle
    2: cook
