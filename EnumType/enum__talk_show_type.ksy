meta:
  id: enum__talk_show_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__talk_show_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: talk_show_type
enums:
  talk_show_type:
    0: talk_show_default
    1: talk_show_force_select
