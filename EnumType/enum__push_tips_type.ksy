meta:
  id: enum__push_tips_type
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
    enum: push_tips_type
enums:
  push_tips_type:
    0: push_tips_none
    1: push_tips_tutorial
    2: push_tips_monster
