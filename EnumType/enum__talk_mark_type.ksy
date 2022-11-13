meta:
  id: enum__talk_mark_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__talk_mark_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: talk_mark_type
enums:
  talk_mark_type:
    0: talk_mark_none
    1: talk_mark_common