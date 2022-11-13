meta:
  id: enum__seal_progress_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__seal_progress_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: seal_progress_type
enums:
  seal_progress_type:
    0: circle
    1: bar
