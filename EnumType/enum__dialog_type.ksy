meta:
  id: enum__dialog_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__dialog_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: dialog_type
enums:
  dialog_type:
    0: lock_frame
    1: bubble
    2: narration
    3: other
