meta:
  id: enum__narrator_state
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__narrator_state:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: narrator_state
enums:
  narrator_state:
    0: ing
    1: pausing
