meta:
  id: enum__main_quest_tag_type
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
    enum: main_quest_tag_type
enums:
  main_quest_tag_type:
    0: mainquest_tag_none
    1: mainquest_tag_guide
    2: mainquest_tag_activity
