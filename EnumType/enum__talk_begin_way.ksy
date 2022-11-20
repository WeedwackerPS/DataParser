meta:
  id: enum__talk_begin_way
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: talk_begin_way
enums:
  talk_begin_way:
    0: talk_begin_none
    1: talk_begin_auto
    2: talk_begin_manual
