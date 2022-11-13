meta:
  id: enum__reminder_show_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__reminder_show_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: reminder_show_type
enums:
  reminder_show_type:
    0: none
    1: talk
    2: bubble
